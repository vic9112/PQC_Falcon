#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_f_out "../tv/cdatafile/c.keygen.autotvin_f_out.dat"
#define AUTOTB_TVOUT_f_out "../tv/cdatafile/c.keygen.autotvout_f_out.dat"
#define AUTOTB_TVIN_g_out "../tv/cdatafile/c.keygen.autotvin_g_out.dat"
#define AUTOTB_TVOUT_g_out "../tv/cdatafile/c.keygen.autotvout_g_out.dat"
#define AUTOTB_TVIN_F_upper_out "../tv/cdatafile/c.keygen.autotvin_F_upper_out.dat"
#define AUTOTB_TVOUT_F_upper_out "../tv/cdatafile/c.keygen.autotvout_F_upper_out.dat"
#define AUTOTB_TVIN_G_upper_out "../tv/cdatafile/c.keygen.autotvin_G_upper_out.dat"
#define AUTOTB_TVOUT_G_upper_out "../tv/cdatafile/c.keygen.autotvout_G_upper_out.dat"
#define AUTOTB_TVIN_h_out "../tv/cdatafile/c.keygen.autotvin_h_out.dat"
#define AUTOTB_TVOUT_h_out "../tv/cdatafile/c.keygen.autotvout_h_out.dat"
#define AUTOTB_TVIN_seed "../tv/cdatafile/c.keygen.autotvin_seed.dat"
#define AUTOTB_TVOUT_seed "../tv/cdatafile/c.keygen.autotvout_seed.dat"
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.keygen.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.keygen.autotvout_gmem0.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_f_out "../tv/rtldatafile/rtl.keygen.autotvout_f_out.dat"
#define AUTOTB_TVOUT_PC_g_out "../tv/rtldatafile/rtl.keygen.autotvout_g_out.dat"
#define AUTOTB_TVOUT_PC_F_upper_out "../tv/rtldatafile/rtl.keygen.autotvout_F_upper_out.dat"
#define AUTOTB_TVOUT_PC_G_upper_out "../tv/rtldatafile/rtl.keygen.autotvout_G_upper_out.dat"
#define AUTOTB_TVOUT_PC_h_out "../tv/rtldatafile/rtl.keygen.autotvout_h_out.dat"
#define AUTOTB_TVOUT_PC_seed "../tv/rtldatafile/rtl.keygen.autotvout_seed.dat"
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.keygen.autotvout_gmem0.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  f_out_depth = 0;
  g_out_depth = 0;
  F_upper_out_depth = 0;
  G_upper_out_depth = 0;
  h_out_depth = 0;
  seed_depth = 0;
  gmem0_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{f_out " << f_out_depth << "}\n";
  total_list << "{g_out " << g_out_depth << "}\n";
  total_list << "{F_upper_out " << F_upper_out_depth << "}\n";
  total_list << "{G_upper_out " << G_upper_out_depth << "}\n";
  total_list << "{h_out " << h_out_depth << "}\n";
  total_list << "{seed " << seed_depth << "}\n";
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int f_out_depth;
    int g_out_depth;
    int F_upper_out_depth;
    int G_upper_out_depth;
    int h_out_depth;
    int seed_depth;
    int gmem0_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void keygen_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_keygen_hw(volatile void * __xlx_apatb_param_f_out, volatile void * __xlx_apatb_param_g_out, volatile void * __xlx_apatb_param_F_upper_out, volatile void * __xlx_apatb_param_G_upper_out, volatile void * __xlx_apatb_param_h_out, volatile void * __xlx_apatb_param_seed) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<16> tr(3096);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem0, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<2>((char*)__xlx_apatb_param_f_out, 512, 0);
tr.send<2>((char*)__xlx_apatb_param_g_out, 512, 512);
tr.send<2>((char*)__xlx_apatb_param_F_upper_out, 512, 1024);
tr.send<2>((char*)__xlx_apatb_param_G_upper_out, 512, 1536);
tr.send<2>((char*)__xlx_apatb_param_h_out, 1024, 2048);
tr.send<2>((char*)__xlx_apatb_param_seed, 24, 3072);
}
#else
try {
static PostCheck<16> pc(AUTOTB_TVOUT_PC_gmem0);
pc.psize = 2;
pc.param = (char*)__xlx_apatb_param_f_out;
pc.depth = 512;
pc.run(AESL_transaction_pc, 0);pc.param = (char*)__xlx_apatb_param_g_out;
pc.depth = 512;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_F_upper_out;
pc.depth = 512;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_G_upper_out;
pc.depth = 512;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_h_out;
pc.depth = 1024;
pc.run(AESL_transaction_pc, 0);
pc.param = (char*)__xlx_apatb_param_seed;
pc.depth = 24;
pc.run(AESL_transaction_pc, 0);

} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_f_out = 0;
unsigned __xlx_offset_byte_param_g_out = 0;
unsigned __xlx_offset_byte_param_F_upper_out = 0;
unsigned __xlx_offset_byte_param_G_upper_out = 0;
unsigned __xlx_offset_byte_param_h_out = 0;
unsigned __xlx_offset_byte_param_seed = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem0, 'b');
transaction<16> tr(3096);
__xlx_offset_byte_param_f_out = 0*2;
if (__xlx_apatb_param_f_out) {
  tr.import<2>((char*)__xlx_apatb_param_f_out, 512, 0);
}
__xlx_offset_byte_param_g_out = 512*2;
if (__xlx_apatb_param_g_out) {
  tr.import<2>((char*)__xlx_apatb_param_g_out, 512, 0);
}
__xlx_offset_byte_param_F_upper_out = 1024*2;
if (__xlx_apatb_param_F_upper_out) {
  tr.import<2>((char*)__xlx_apatb_param_F_upper_out, 512, 0);
}
__xlx_offset_byte_param_G_upper_out = 1536*2;
if (__xlx_apatb_param_G_upper_out) {
  tr.import<2>((char*)__xlx_apatb_param_G_upper_out, 512, 0);
}
__xlx_offset_byte_param_h_out = 2048*2;
if (__xlx_apatb_param_h_out) {
  tr.import<2>((char*)__xlx_apatb_param_h_out, 1024, 0);
}
__xlx_offset_byte_param_seed = 3072*2;
if (__xlx_apatb_param_seed) {
  tr.import<2>((char*)__xlx_apatb_param_seed, 24, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem0, tr.p, tr.tbytes);
tcl_file.set_num(3096, &tcl_file.gmem0_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem0);
{
aesl_fh.write(AUTOTB_TVIN_gmem0, begin_str(AESL_transaction));
__xlx_offset_byte_param_f_out = 0*2;
if (__xlx_apatb_param_f_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_f_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
__xlx_offset_byte_param_g_out = 512*2;
if (__xlx_apatb_param_g_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_g_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
__xlx_offset_byte_param_F_upper_out = 1024*2;
if (__xlx_apatb_param_F_upper_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_F_upper_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
__xlx_offset_byte_param_G_upper_out = 1536*2;
if (__xlx_apatb_param_G_upper_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_G_upper_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
__xlx_offset_byte_param_h_out = 2048*2;
if (__xlx_apatb_param_h_out) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_h_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
__xlx_offset_byte_param_seed = 3072*2;
if (__xlx_apatb_param_seed) {
for (size_t i = 0; i < 24; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_seed + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_gmem0, s);
}
}
tcl_file.set_num(3096, &tcl_file.gmem0_depth);
aesl_fh.write(AUTOTB_TVIN_gmem0, end_str());
}
#endif
// print f_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_f_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_f_out;
aesl_fh.write(AUTOTB_TVIN_f_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.f_out_depth);
aesl_fh.write(AUTOTB_TVIN_f_out, end_str());
}

// print g_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_g_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_g_out;
aesl_fh.write(AUTOTB_TVIN_g_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.g_out_depth);
aesl_fh.write(AUTOTB_TVIN_g_out, end_str());
}

// print F_upper_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_F_upper_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_F_upper_out;
aesl_fh.write(AUTOTB_TVIN_F_upper_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.F_upper_out_depth);
aesl_fh.write(AUTOTB_TVIN_F_upper_out, end_str());
}

// print G_upper_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_G_upper_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_G_upper_out;
aesl_fh.write(AUTOTB_TVIN_G_upper_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.G_upper_out_depth);
aesl_fh.write(AUTOTB_TVIN_G_upper_out, end_str());
}

// print h_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_h_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_h_out;
aesl_fh.write(AUTOTB_TVIN_h_out, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.h_out_depth);
aesl_fh.write(AUTOTB_TVIN_h_out, end_str());
}

// print seed Transactions
{
aesl_fh.write(AUTOTB_TVIN_seed, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_seed;
aesl_fh.write(AUTOTB_TVIN_seed, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.seed_depth);
aesl_fh.write(AUTOTB_TVIN_seed, end_str());
}

CodeState = CALL_C_DUT;
keygen_hw_stub_wrapper(__xlx_apatb_param_f_out, __xlx_apatb_param_g_out, __xlx_apatb_param_F_upper_out, __xlx_apatb_param_G_upper_out, __xlx_apatb_param_h_out, __xlx_apatb_param_seed);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem0, 'b');
transaction<16> tr(3096);
__xlx_offset_byte_param_f_out = 0*2;
if (__xlx_apatb_param_f_out) {
  tr.import<2>((char*)__xlx_apatb_param_f_out, 512, 0);
}
__xlx_offset_byte_param_g_out = 512*2;
if (__xlx_apatb_param_g_out) {
  tr.import<2>((char*)__xlx_apatb_param_g_out, 512, 0);
}
__xlx_offset_byte_param_F_upper_out = 1024*2;
if (__xlx_apatb_param_F_upper_out) {
  tr.import<2>((char*)__xlx_apatb_param_F_upper_out, 512, 0);
}
__xlx_offset_byte_param_G_upper_out = 1536*2;
if (__xlx_apatb_param_G_upper_out) {
  tr.import<2>((char*)__xlx_apatb_param_G_upper_out, 512, 0);
}
__xlx_offset_byte_param_h_out = 2048*2;
if (__xlx_apatb_param_h_out) {
  tr.import<2>((char*)__xlx_apatb_param_h_out, 1024, 0);
}
__xlx_offset_byte_param_seed = 3072*2;
if (__xlx_apatb_param_seed) {
  tr.import<2>((char*)__xlx_apatb_param_seed, 24, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem0, tr.p, tr.tbytes);
tcl_file.set_num(3096, &tcl_file.gmem0_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem0);
{
aesl_fh.write(AUTOTB_TVOUT_gmem0, begin_str(AESL_transaction));
__xlx_offset_byte_param_f_out = 0*2;
if (__xlx_apatb_param_f_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_f_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
__xlx_offset_byte_param_g_out = 512*2;
if (__xlx_apatb_param_g_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_g_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
__xlx_offset_byte_param_F_upper_out = 1024*2;
if (__xlx_apatb_param_F_upper_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_F_upper_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
__xlx_offset_byte_param_G_upper_out = 1536*2;
if (__xlx_apatb_param_G_upper_out) {
for (size_t i = 0; i < 512; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_G_upper_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
__xlx_offset_byte_param_h_out = 2048*2;
if (__xlx_apatb_param_h_out) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_h_out + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
__xlx_offset_byte_param_seed = 3072*2;
if (__xlx_apatb_param_seed) {
for (size_t i = 0; i < 24; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_seed + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_gmem0, s);
}
}
tcl_file.set_num(3096, &tcl_file.gmem0_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem0, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

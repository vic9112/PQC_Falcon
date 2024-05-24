# 事項: Call graph、Run profile tools
## gprof:  https://hackmd.io/@vic9112/BJT2k__26
## valgrind:
### 流程
確認是否有安裝gcc、clang、valgrind、kcachegrind
```
clang --version
gcc --version
valgrind --version
kcachegrind --version
```
沒有的話，先安裝
```
sudo apt install clang
sudo apt install gcc
sudo apt install valgrind
sudo apt install kcachegrind
```
如何叫出callgraph(如同gprof先把./test_falcon 產出)
```
valgrind --tool=callgrind ./test_falcon
kcachegrind callgrind.out.#####  & //(##### is a number)
```
### Result
we only run test_nist_KAT in test.falcon.c

![image](https://github.com/nthuyouwei/PQC/assets/145022311/fda7a916-b5c0-4adc-bed1-dde09bcf5d42)

#define CRYPTO_SECRETKEYBYTES   2305
#define CRYPTO_PUBLICKEYBYTES   1793
#define CRYPTO_BYTES            1330
#define CRYPTO_ALGNAME          "Falcon-1024"

int crypto_sign_keypair(unsigned char *pk, unsigned char *sk);

int crypto_sign(unsigned char *sm, unsigned long long *smlen,
	const unsigned char *m, unsigned long long mlen,
	const unsigned char *sk);

int crypto_sign_open(unsigned char *m, unsigned long long *mlen,
	const unsigned char *sm, unsigned long long smlen,
	const unsigned char *pk);

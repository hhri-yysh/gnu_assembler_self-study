#include <stdint.h>

int main(){
	int32_t K = 0xA77627;
	int16_t A = 0x6745;
	int8_t B = 0x65;
	int32_t C = 0x342376 ;
	int8_t E = 0xAA;
	int8_t F = 0x89;
	int32_t X = (A * B) + C / (K - E * F);
}

#include "types.h"
#include "user.h"
void clear(int x){
	if(x=='x')
		return;
	printf(1,"\n");
	clear(x+(1));
	}
	int main(void){
		clear('A');
		exit();
		}

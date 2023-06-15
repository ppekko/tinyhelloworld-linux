#include <stdio.h>

void _start() {
   asm volatile("push %rax\n");
   printf("Hello World!");fflush(NULL);
  asm ( \
  "movl $1,%eax\n" \
  "xor %ebx,%ebx\n" \
  "int $128\n" \
  );
}

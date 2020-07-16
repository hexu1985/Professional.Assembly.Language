# build cpuid.s
as -g -o cpuid.o cpuid.s
ld -o cpuid cpuid.o

# build cpuid2.s
as -g -o cpuid2.o cpuid2.s
ld -e main -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o cpuid2 -lc cpuid2.o


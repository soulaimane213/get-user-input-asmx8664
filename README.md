# x86-64 Assembly – Hello User

A simple x86-64 assembly program that asks for your name and prints it back.

Written in NASM, runs on Linux.

## What it does

1. Prints a prompt asking for your name
2. Reads your input
3. Prints it back

## Run it

```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
./hello
```

## Video

I explained this on my YouTube channel if you want to follow along:
👉 https://www.youtube.com/watch?v=Ts1k_FnbFdk

## Note

There's a small bug in the last write syscall — `rdi` is never set to `1` before printing the name. Good exercise to spot and fix it.

# gdb: navigate in threads

## Thread information 

Information about threads can be obtbained with the command **`info threads`**.

The active thread is indicated by the character **`*`**

```
info threads
```
```
  5 Thread 27201  0x0ffae45c in read () from /lib/libpthread.so.0
  4 Thread 27200  0x0ffaac7c in __pthread_cond_timedwait (cond=0x129af7f8, mutex=0x129af828, abstime=0x4902e478) at pthread_cond_timedwait.c:159
  3 Thread 27198  0x0ffaecd4 in nanosleep () from /lib/libpthread.so.0
* 2 Thread 27206  SETUP::CONFIG::SetupConfigSetup::notifyFileModified_internal (this=0x129f13c0) at /workspace/Libs/System/Setup/Config/SetupConfigSetup.cpp:653
  1 Thread 27194  0x0ffaac7c in __pthread_cond_timedwait (cond=0xbf9a3f58, mutex=0xbf9a3f88, abstime=0xbf9a3ef8) at pthread_cond_timedwait.c:159
```
## Select a thread

For selecting another thread we use the command **`thread 3`** 

```
thread 3
```
```
[Switching to thread 3 (Thread 27198)]#0  0x0ffaecd4 in nanosleep () from /opt/elinos-5.1/cdk/ppc/60x/glibc-2.11/powerpc-unknown-linux-gnu//lib/libpthread.so.0
```


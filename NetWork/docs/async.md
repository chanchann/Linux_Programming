## 同步 vs 异步

阻塞I/O,非阻塞I/O，基于非阻塞I/O的多路复用都是同步调用技术

同步和异步调用都是对于数据的获取而言

同步调用中，read时，内核将数据从内核空间拷贝到应用程序空间，这个过程在read函数中同步进行，如果内核实现的考虑效率很差，read调用在这个同步过程中消耗比较长的时间

## 异步

发起aio_read就立即返回，内核自动将数据从内核空间拷贝到应用程序空间，拷贝过程是异步的，应用程序不需要主动发起拷贝动作

[异步例子](../async/aio.c)


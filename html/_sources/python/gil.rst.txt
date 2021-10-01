GIL
----

A summary about the GIL (**Global Interpreter Lock**) in Python. Based on information `from this very nice article <https://tenthousandmeters.com/blog/python-behind-the-scenes-13-the-gil-and-its-effects-on-python-multithreading/>`_.

What is it ?
~~~~~~~~~~~~~

* A lock inside the main evaluation loop which makes Python code thread-safe by nature
* Allow only one OS thread to execute Python bytecode at any given time
* Protects mutable data sructures in user code but also from Python: e.g. reference counting

Python Threads ?
~~~~~~~~~~~~~~~~

* Python has support for threads, but due to the GIL, it won't speed up your application
* I/O operations do not hold the GIL
  1. Release the GIL
  2. Do the I/O operation (write, recv, accept, ...)
  3. Acquire the GIL

What is not running in the GIL ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* I/O Operations
* C code or extension

Evaluation loop
~~~~~~~~~~~~~~~

This is a high level view of the Python evaluation loop::

  while true
    check if other threads requested the GIL (eval_breaker)
      if yes, release the GIL and waits again
    get the next bytecode instruction
    run the instruction

Switch interval
~~~~~~~~~~~~~~~

* Before entering the instruction loop, the thread will try to acquire the GIL
* If it's available, the thread continues and runs
* If it is not, it waits until it is released
* By default, it waits for 5ms (switch interval)
* If the GIL is not released during that time, it sets the eval_breaker
* The thread holding the GIL will suspend execution
* The waiting thread can now acquire the GIL and run

This means for I/O threads, if there is another CPU-bound thread running, it might take 5ms to run again after each I/O call!

Benchmark
----------

This TIL shows some tips for recording execution time in C++ code.

::

   auto st = std::chrono::system_clock::now();
   for (long long i=0 ; i < 100000000; ++i) 
   {
      do_stuff();
   }
   std::chrono::duration<double> dur=std::chrono::system_clock::now() -  st();
   std::cout << dur.count(); 

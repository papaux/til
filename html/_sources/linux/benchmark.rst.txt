Linux Benchmark
-----------------

Disk benchmark (read)::

    fio --filename=/dev/vda1 --direct=1 --rw=randread --bs=4k --ioengine=libaio --iodepth=256 --runtime=120 --numjobs=4 --time_based --group_reporting --name=iops-test-job --eta-newline=1 --readonly

Options:
* `--filename` : the file or device to test
* `--direct` : use direct I/O
* `--rw` : type of I/O pattern (e.g., randread, randwrite, read, write)
* `--bs` : block size
* `--ioengine` : I/O engine to use (e.g., libaio, sync)
* `--iodepth` : number of I/O operations to keep in flight
* `--runtime` : duration of the test in seconds
* `--numjobs` : number of threads to use
* `--time_based` : run the test for the specified time
* `--group_reporting` : report results for the entire group of jobs
* `--name` : name of the job
* `--eta-newline` : print ETA on a new line
* `--readonly` : perform read-only tests    

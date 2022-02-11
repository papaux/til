Benchmark
----------

How to measure execution time in several programming languages.

Goalng::

    func main() {
        start := time.Now()
        processing()
        elapsed := time.Since(start)
        log.Printf("Processing took %s", elapsed)
    }

Javascript::

    console.time(‘processing)
    processing()
    console.timeEnd(‘processing’)

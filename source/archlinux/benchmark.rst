Benchmark
---------

Running benchmarks on Arch Linux, using phoronix-test-suite.

Pre-requisite::

    yay -S phoronix-test-suite
    sudo pacman -S fio glm vtk fmt opencl-nvidia opencl-headers cmake meson yasm nasm vulkan-icd-loader vulkan-headers vulkan-tools p7zip
    python -m venv ~/sandbox/venv && source ~/sandbox/venv/bin/activate && pip install --upgrade pip

    vim ~/sandbox/venv/pyvenv.cfg
    # set: include-system-site-packages = true  

Install tests::

    phoronix-test-suite install pts/compress-7zip pts/compress-gzip pts/blender pts/build-linux-kernel pts/encode-flac pts/encode-mp3 pts/memcached pts/nginx pts/opencv pts/pyperformance pts/sqlite-speedtest pts/vkmark system/compress-zstd git/svt-av1 git/svt-hevc git/svt-vp9  pts/coremark pts/numpy system/selenium git/x265 pts/git 

Configure batch-mode::

    phoronix-test-suite batch-setup

    Save test results when in batch mode (Y/n): y
    Open the web browser automatically when in batch mode (y/N): y
    Auto upload the results to OpenBenchmarking.org (Y/n): y
    Prompt for test identifier (Y/n): y
    Prompt for test description (Y/n): n
    Prompt for saved results file-name (Y/n): y
    Run all test options (Y/n): y


Run tests for the first time::

    FORCE_TIMES_TO_RUN=3 phoronix-test-suite batch-benchmark pts/compress-7zip pts/compress-gzip pts/blender pts/build-linux-kernel pts/encode-flac pts/encode-mp3 pts/memcached pts/nginx pts/opencv pts/pyperformance pts/sqlite-speedtest pts/vkmark system/compress-zstd git/svt-av1 git/svt-hevc git/svt-vp9  pts/coremark pts/numpy system/selenium git/x265 pts/git 

Run tests comparing against previous run::

    FORCE_TIMES_TO_RUN=3 phoronix-test-suite batch-benchmark 2306160-NE-2023NEWBU27

Clean up
    sudo pacman -Rs fio glm vtk fmt opencl-nvidia opencl-headers cmake meson yasm nasm vulkan-icd-loader vulkan-headers vulkan-tools phoronix-test-suite p7zip

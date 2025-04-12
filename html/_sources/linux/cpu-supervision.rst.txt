CPU Supervision
-----------------

Tools for monitoring and troubleshooting your CPU performance / temperature / speed.

CPU Frequency
~~~~~~~~~~~~~

Easy (and probably inacurate) way to check frequency from procfs::

  watch -n 1 'cat /proc/cpuinfo | grep MHz'

  cpu MHz         : 2400.000
  cpu MHz         : 1130.881
  cpu MHz         : 2400.000
  cpu MHz         : 2400.000
  cpu MHz         : 2400.000
  cpu MHz         : 2400.000
  cpu MHz         : 2400.000
  cpu MHz         : 2400.000


Check frequency range, governor and driver::

  sudo cpupower frequency-info  

  analyzing CPU 0:
  driver: intel_pstate
  CPUs which run at the same hardware frequency: 0
  CPUs which need to have their frequency coordinated by software: 0
  maximum transition latency:  Cannot determine or is not supported.
  hardware limits: 400 MHz - 4.20 GHz
  available cpufreq governors: performance powersave
  current policy: frequency should be within 400 MHz and 4.20 GHz.
                  The governor "powersave" may decide which speed to use
                  within this range.
  current CPU frequency: Unable to call hardware
  current CPU frequency: 1.18 GHz (asserted by call to kernel)
  boost state support:
    Supported: yes
    Active: yes


Set frequency governor::

  sudo cpupower frequency-set -g powersave

List installed governor::

  ls /usr/lib/modules/$(uname -r)/kernel/drivers/cpufreq/

CPU temperature
~~~~~~~~~~~~~~~

Check processor (and other components) temperature::

  sensors

  coretemp-isa-0000
  Adapter: ISA adapter
  Package id 0:  +43.0°C  (high = +100.0°C, crit = +100.0°C)
  Core 0:        +40.0°C  (high = +100.0°C, crit = +100.0°C)
  Core 1:        +42.0°C  (high = +100.0°C, crit = +100.0°C)
  Core 2:        +41.0°C  (high = +100.0°C, crit = +100.0°C)
  Core 3:        +41.0°C  (high = +100.0°C, crit = +100.0°C)

  
All-in-One
~~~~~~~~~~

Tools for checking CPU temperature, frequency, usage and performing stress-test::

  s-tui

.. image:: https://github.com/amanusk/s-tui/blob/v1.1.3/ScreenShots/s-tui2.gif?raw=true
  :width: 1000
  :alt: s-tui screenshot

Intel tool for getting all sorts of information about your processor and power usage::

  powertop

Powertop Idle Stats::

              Pkg(HW)  |            Core(HW) |            CPU(OS) 0   CPU(OS) 4
                      |                     | C0 active   7.7%        6.9%
                      |                     | POLL        0.0%    0.1 ms  0.0%    0.0 ms
                      |                     | C1_ACPI    22.4%    0.3 ms 21.5%    0.3 ms
  C2 (pc2)    7.9%    |                     | C2_ACPI    47.0%    0.8 ms 33.3%    0.8 ms
  C3 (pc3)    2.2%    | C3 (cc3)    0.0%    | C3_ACPI    17.4%    0.6 ms 33.4%    1.2 ms
  C6 (pc6)    0.0%    | C6 (cc6)    0.0%    |
  C7 (pc7)    0.0%    | C7 (cc7)   41.6%    |
  C8 (pc8)    0.0%    |                     |
  C9 (pc9)    0.0%    |                     |
  C10 (pc10)  0.0%    |                     |

Powertop Frequency Stats::

              Package |             Core    |            CPU 0       CPU 4
                      |                     | Average     1467 MHz  1.5 GHz
  Idle                | Idle                | Idle

                      |             Core    |            CPU 1       CPU 5
                      |                     | Average   1.6 GHz     1.5 GHz
                      | Idle                | Idle

                      |             Core    |            CPU 2       CPU 6
                      |                     | Average   1.5 GHz     1.6 GHz
                      | Idle                | Idle

                      |             Core    |            CPU 3       CPU 7
                      |                     | Average   1.5 GHz     1.5 GHz
                      | Idle                | Idle



Another intel tool for getting frequency stats::

  turbostat
  
  CCore  CPU     Avg_MHz Busy%   Bzy_MHz TSC_MHz IPC     IRQ     SMI     POLL    C1ACPI  C2ACPI  C3ACPI  POLL%   C1ACPI% C2ACPI% C3ACPI% CPU%c1  CPU%c6  CPU%c7  CoreTmp PkgTmp  GFX%rc6   GFXMHz  GFXAMHz Totl%C0 Any%C0  GFX%C0  CPUGFX% Pkg%pc2 Pkg%pc3 Pkg%pc6 Pkg%pc7 Pkg%pc8 Pkg%pc9 Pk%pc10 CPU%LPI SYS%LPI PkgWatt CorWatt GFXWatt RAMWatt PKG_%   RAM_%
  -       -       138     11.47   1205    2419    0.81    1170    0       1       1197    956     578     0.00    14.79   33.34   40.71   33.41   0.00    55.12   43      44      82.83     350     350     89.65   53.51   16.94   11.63   15.98   4.80    0.00    0.00    0.00    0.00    0.00    0.00    0.00    4.89    1.11    0.24    0.00    0.00    0.00
  0       0       118     10.07   1173    2419    0.53    347     0       0       237     168     77      0.00    20.87   37.41   32.04   39.51   0.00    50.41   41      44      82.85     350     350     89.67   53.52   16.94   11.64   15.98   4.80    0.00    0.00    0.00    0.00    0.00    0.00    0.00    4.89    1.11    0.24    0.00    0.00    0.00
  0       4       132     11.34   1161    2419    1.02    131     0       0       249     129     49      0.00    21.77   41.96   25.25   38.26
  1       1       156     12.85   1213    2419    0.76    115     0       0       151     143     45      0.00    18.82   38.85   29.77   40.47   0.00    46.68   43
  1       5       107     9.26    1150    2419    0.49    145     0       0       218     125     61      0.00    23.18   35.19   32.70   44.06
  2       2       169     13.81   1224    2419    0.52    160     0       0       85      102     105     0.00    8.55    27.06   50.91   26.07   0.00    60.12   41
  2       6       137     10.27   1329    2419    0.62    122     0       1       111     108     60      0.00    11.38   34.74   43.88   29.60
  3       3       164     13.93   1175    2419    1.63    78      0       0       67      95      101     0.00    5.92    28.37   52.09   22.78   0.00    63.29   40
  3       7       124     10.20   1214    2419    0.71    72      0       0       79      86      80      0.00    7.85    23.14   59.06   26.52

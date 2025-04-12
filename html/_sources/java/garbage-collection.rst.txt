Garbage Collection
-------------------

A summary of JVM Garbage Collection.

**Garbage collector tasks**

- Marking => traverse the stack and all nested references and mark all objects that have a reference pointing to them in the heap
- Sweeping => delete the objects not having a reference

  - By Copying: copy all live objects in a new memory portion, delete the old
  - By Compacting: delete all objects from the memory, and move around existing memory
  
**Heap memory**

- Young Generation => most java objects do not live long, will be part of generation. Fast allocation

   - Eden space => new object created here
   - Survivor => GC moves object still alive from eden to survivor space

- Old Generation => GC moves object from Young Generation for long lived object (scaveration)
  => Old Generation needs special GC treatment

- Copying objects from Young to Old generation can be expensive

**Non-Heap memory**

- Metaspace (used to be called permanent)

  - Storing:

    - Class structure
    - Method of the class
    - Constants
    - Annotations
    - Optimizations

  - Contains metadata for classes stored in Heap
  - Once objects are cleaned from heap, metaspace is cleaned too
  - Garbage collection of metaspace is special

    - Triggers when metaspace is reaching memory threshold or running out of memory
    
**Stop the world**

- Expensive process as application needs to be paused during marking
- There are alternatives

**Garbage collector implementations**

The best GC depends on your app and use case. Needs to be monitored and measured.

- Serial GC

  - Young: mark and cpy
  - Old: mark sweep compact
  - Single threaded
  - Stop the world
  - => Fine for small programs, not ideal for large program

- Parallel GC

  - Young: mark and cpy
  - Old: mark sweep compact
  - Multi-threaded
  - Stop the world (but shorter)
  - => Good for multi-core machine

- CMS GC (Concurrent Mark Sweep)

  - Young: mark and cpy
  - Old: mark sweep compact and mostly concurrent (concurrent => no requirement to stop the app)
  - Multi-threaded
  - Stop the world and mostly concurrent (sometimes will stop the world)

- G1 GC (Garbage First)

  - Divides the heap into small regions
  - Parallel, concurrent, incrementally compacting
  - Keeps track of amount of live and dead objects
  - Aim for shorter pauses
  - => Good for large memory space and high performance machines

- Z GC

  - Aims for max 10ms pause
  - Reference coloring => only works on 64 bits as it stores color into the reference
  - Sweep and copy
  - Load barriers => when reference from the heap is loaded, do some checking (remapping)
  - Multi threads
  - Concurrent

**Metrics for GC**

- Allocation rate
- Heap population
- Mutation rate (how often references are updated)
- Object life span
- Mark time (how long the GC needs to find all objects on heap)
- Compaction time (how long does it take to move objects)
- GC cycle time (how long does it take for a full cycle)

**Tools**

- jstat: jstat -gcutil
- jvisualvm

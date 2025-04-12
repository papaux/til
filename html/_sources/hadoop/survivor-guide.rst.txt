Hadoop Survivor Guide
----------------------

An overview of all Hadoop components - or the minimal set of knowledge required to navigate this world!

Hadoop Architecture Fundamentals
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* ``HDFS (Hadoop Distributed File System)``: a distributed file system designed to handle large data sets on commodity hardware. Used by Hadoop applications
* ``Cluster``: set of computers consisting of DataNodes and NameNodes
* ``DataNode``: store and process files. Commodity hardware
* ``NameNode``: a single computer acting as a monitor and supervisor for operations performed by data nodes. Stores metadata of files. Usually a high-class hardware
* ``Secondary NameNode``: plays an important role when the NameNode fails. It holds the latest copy of HDFS metadata, which is used when the namenode is restarted. Otherwise the NameNode would have to rebuild it from a Log, which is expensive.
* ``Block``: smallest unit of storage. By default 64MB/128MB
* ``Hive``: a data warehouse software built on top of Hadoop for data query and analysis. Gives an SQL-Like interface to query data stored in various databases and file systems that integrate with Hadoop.

Basics of query and task execution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* ``Mapper``: A function or task processing input records from file. Runs on the data nodes to process files. MAP part from Map-Reduce. Generate output that is then processed by the reducer.
* ``Reducer``: Collect the results from each mapper
* ``JobTracker``: service which orchestrates the MapReduce tasks to specific nodes in the cluster. It tries assigning to nodes that have the data, or at least are in the same rack
* ``TaskTracker``: service on DataNodes that will accept task from the jobTracker. It has a number of slots for parallel tasks it can accept.
* ``Workflow``: a specific sequence of Hadoop jobs which defines dependencies between jobs.

Icing on the cake (not fundamental but nice advanced tooling)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* ``Yarn``: keep track and allocate resources to run jobs, execute jobs, show log and progress of jobs. It splits the functionality of resource management and job scheduling/monitoring into a ResourceManager (RM) daemon and an ApplicationMaster (AM) daemon.
* ``Oozie``: workflow scheduler to manage Apache Hadoop jobs (ala cron). You give it a workflow and Ooozie will run it at specific times. It sumibts the job to Yarn
* ``Hue``: a SQL assistant with a GUI to help writing queries. Support a multitude of backend DB (including Druid)
* ``Pig``: a high level platform for creating queries to analyze large data sets. It features a high level language (Pig Latin) simplifying programming and parallelization of complex tasks, providing auto optimization. The Pig scripts get converted to MapReduce jobs
* ``Sqoop``: efficient bulk data transfer tool between Hadoop and structured datastores, such as relational DB.
* ``Distcp``: a tool for large intra/inter-cluster copying of data. It leverages MapReduce to achieve parallelization, error handling and recovery.
* ``Knox``: an application gateway for interacting with REST APIs and UIs of the Hadoop ecosystem. It acts as a proxy, authentication service supporting multiple backend (LDAP, Kerberos, SAML, OAuth, …)

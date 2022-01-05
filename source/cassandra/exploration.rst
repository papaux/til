Exploration
-----------

Data / Schema / Cluster exploration commands for Cassandra.

Cluster information::

   cqlsh> describe cluster
   
   Cluster: Test Cluster
   Partitioner: Murmur3Partitioner
   Snitch: DynamicEndpointSnitch

Connection information::

  cqlsh> show host
  Connected to Test Cluster at 192.168.x.x:9042.

Show version::

  cqlsh> show version
  [cqlsh 5.0.1 | Cassandra 4.0.1 | CQL spec 3.4.5 | Native protocol v5]

List Keyspaces::

  cqlsh> describe keyspaces
  
  system       system_distributed  system_traces  system_virtual_schema
  system_auth  system_schema       system_views 

View consistency level::

  cqlsh> consistency
  Current consistency level is ONE.

List tables::

  cqlsh> describe tables
  
  Keyspace system
  ---------------
  available_ranges     paxos                size_estimates         
  available_ranges_v2  peer_events          sstable_activity       
  batches              peer_events_v2       table_estimates        
  built_views          peers                transferred_ranges     
  compaction_history   peers_v2             transferred_ranges_v2  
  "IndexInfo"          prepared_statements  view_builds_in_progress
  local                repairs            

Detail about a specific table::

  cqlsh> describe table system.local
  
  CREATE TABLE system.local (
      key text PRIMARY KEY,
      bootstrapped text,
      broadcast_address inet,
      ...
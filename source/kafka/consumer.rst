Consumer
----------

Parameters
~~~~~~~~~~

- ``group.id``: consumers sharing the same group ID will share the the workload to be consumed from a topic.
- ``client.id``: an optional label to name a particular consumer or producer. Only useful to make debugging easier to track the source of requests beyond IP and Port that will appear in Kafka server logs.
- ``consumer.id``:  referenced as ``group.instance.id``, is an optional unique identifier of the consumer instance. If set, only one instance with the ID is allowed, which is used to reduce consumer rebalancing (KIP-345). If not set, the consumer will join as a dynamic member.

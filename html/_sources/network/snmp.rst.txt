SNMP
----

Some definitions:

* **MIB** (Management Information Base): hierarchical structure of the information exposed by a SNMP agent.
* **SMI** (Structure of Management Information): defines the standard rules and format for describing a MIB.


OID DataTypes
~~~~~~~~~~~~~~

Data types defined as part of SMI:

``Integer``: Signed 32bit Integer.
``Integer32``: Same as Integer.
``UInteger32``: Unsigned 32bit Integer.
``Octet String``: Arbitrary binary or textual data (typically max 255 characters).
``Object Identifier``: An OID.
``Bit String``: Enumeration of named bits. Unsigned datatype.
``IpAddress``: An IP address.
``Counter32``: Monotonically increasing non-negative integer (max value = 32bits-1). Restart at zero when max value is reached.
``Counter64``: Same as Counter32 but max value = 64bits-1.
``Gauge32``: Unsigned integer, which may increase or decrease, but shall never exceed a maximum value.
``TimeTicks``: Unsigned integer which represents the time, modulo 232 (4294967296 dec), in hundredths of a second between two epochs.

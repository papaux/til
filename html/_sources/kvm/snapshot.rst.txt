KVM: Manage snapshots
------------------------

Some useful commands to create, manage and restore VM snapshots when running KVM and libvirt.

Some notes before getting started:
 - You need the `virsh` tool
 - These commands are meant to be used on not running instances
 - If you don't see your instance, run the commands with `sudo`
 - The volume needs to be configured with `qcow2`

List the machines, including shut down instances:

::

  virsh list --all

Create a snapshot of a turned off instance:

::
  
  virsh snapshot-create-as --domain debian10 --name "initial" --description "Clean state before installing tools"

List the snapshots:

::

  virsh snapshot-list --domain debian10

Get information about a snapshot:

::

  virsh snapshot-info --domain debian10 --snapshotname initial

Revert a domain to a snapshot:

::

  virsh snapshot-revert --domain debian10 --snapshotname initial

Delete a domain snapshot

::

  virsh snapshot-delete --domain debian10 --snapshotname initial



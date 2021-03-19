kubectl
-------

List of most useful `kubectl` commands or global settings.

Explore a Kubernetes environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Print the address of the master and cluster services::

  kubectl cluster-info

List all nodes of the cluster::

  kubectl get nodes

List all resources::

  kubectl get all

Display more information::

  kubectl get all -o wide

Get details about a resource::

  kubectl describe pod my-pod

Get definition as a file::

  kubectl get pod my-pod -o yaml

Select namespace::

  kubectl --namespace=dev-ns

Get list of pods and services::

  kubectl get pod,svc

Get all resources matching a label::

  kubectl get all --selector label=value

Deploy a resource::

  kubectl create -f <filename.yaml>

Deploy all resources from current folder::

  kubectl create -f .

Show without header (to pipe with other commnands)::

  kubectl get pods --no-headers | wc

Change resources
~~~~~~~~~~~~~~~~

Live edit a resource::

  kubectl edit pod my-pod

Dry run::

  kubectl --dry-run=client

Start running 1 or more instances of a container image in the cluster::

  kubectl run hello-minikube

Get help
~~~~~~~~

Command help::

  kubectl get --help

Resource overall information::

  kubectl explain pods

Resource definition structure help::

  kubectl explain pods --recursive | grep envFrom -A3

Inspect pods
~~~~~~~~~~~~

Exec command in a pod (in that case, checking the user running in the container)::

  kubectl exec my-pod -- whoami

Get logs::

  kubectl logs -f my-pod <my-container>

Templates
~~~~~~~~~

Simply create a template yaml file using::

  kubectl run bee --image=nginx --dry-run -o yaml > pod.yaml


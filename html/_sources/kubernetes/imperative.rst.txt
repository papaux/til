Imperative commands
-------------------

Export a command to a file::

  ... --dry-run=client -o yaml > resource.yaml

Create pod::

  kubectl run redis --image redis:alpine --labels="tier=db"

Expose as service::

  kubectl expose pod redis --port=6379 --name redis-service --type ClusterIP

Create deployment with replicas::

  kubectl create deployment webapp --image company/webapp-server --replicas=3

Run a pod and expose port::

  kubectl run my-nginx --image nginx --port 8080

Create namespace::

  kubectl create namespace dev-ns

Taint a node::

  kubectl taint node node01 spray=mortein:NoSchedule

Untaint a node::

  kubectl taint node node01 spray=mortein:NoSchedule-

Label a node::

  kubectl label nodes node01 color=blue

Create a deployment::

  kubectl create deployment blue --image=nginx
  kubectl scale deployment blue --replicas=6

Create a service::

  kubectl expose deployment blue --name=blue-service --target-port=8080 --type=NodePort --port=8080

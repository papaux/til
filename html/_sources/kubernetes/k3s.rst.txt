K3s on Ubuntu 24.04
====================

1. Download a VDI disk image from https://www.osboxes.org/ubuntu-server/
2. Import in VirtualBox and run as a VM
3. Install basics::

    sudo apt update
    sudo apt upgrade
	sudo apt install openssh-server vim

4. Install k3s::

	curl -sfL https://get.k3s.io | sh -

5. Validate::

	systemctl status k3s
	kubectl get all -n kube-system

6. Install helm::

	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh
	./get_helm.sh
	
Example helm chart install
--------------------------

1. Set k3s config file::

    export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

2. Add helm repository::

    helm repo add airbyte https://airbytehq.github.io/helm-charts
    helm repo update
    helm search repo airbyte

3. Install

    helm install airbyte-test airbyte/airbyte

4. Pay attention to instructions::

    1. Get the application URL by running these commands:
    export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=webapp" -o jsonpath="{.items[0].metadata.name}")
    export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
    echo "Visit http://127.0.0.1:8080 to use your application"
    kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT

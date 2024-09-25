K3s on Ubuntu 24.04
====================

1. Download a VDI disk image from https://www.osboxes.org/ubuntu-server/
2. Import in VirtualBox and run as a VM
3. Install basics::

	sudo apt install openssh-server

4. Install k3s::

	curl -sfL https://get.k3s.io | sh -

5. Validate::

	systemctl status k3s
	kubectl get all -n kube-system

6. Install helm::

	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh
	./get_helm.sh
	

	
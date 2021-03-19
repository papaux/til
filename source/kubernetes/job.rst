job and cronjob
---------------

job
~~~

Create::

  kubectl create job my-job --image some/docker-image

List::

  kubectl get job

Details::

  kubectl describe job my-job

cronjob
~~~~~~~

Create::

  kubectl create cronjob my-job --image some/docker-image --schedule "45 12 * * *"

List::

  kubectl get cronjob

Details::

  kubectl get cronjob my-job

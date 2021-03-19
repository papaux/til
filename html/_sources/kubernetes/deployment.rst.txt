Manage Deployment
-----------------

1. Create

::

   kubectl create -f deployment.yaml

2. Get

::

   kubectl get deployments

3. Update

::

   kubectl apply -f deployment.yaml

4. Status

::

   kubectl rollout status deployments/my-deployment

   kubectl rollout history deployments/my-deployment

5. Rollback

::

   kubectl rollout undo deployments/my-deployment

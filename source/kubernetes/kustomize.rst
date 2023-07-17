Kustomize
---------

kustomizaton.yaml anatomy
~~~~~~~~~~~~~~~~~~~~~~~~~~

Features of kustomization.yaml

- ``resources``: list of configuration files or folders to be included
- ``patchesStrategicMerge``: list of strategic merge files for kubernetes objects (patch existing object with entries from the)
- ``namespace``: namespace to apply to all resources
- ``secretGenerator``: list of entries generating a secret
- ``commonLabels``: map of labels / values to add to all resources and selectors
- ``commonAnnotations``: map of annotations to add to all resources
- ``images``: list of image name overrides (name/tags/digest) without the need of a patch
- ``namePrefix``: text to be prepended to the name of all resources
- ``nameSuffix``: text to be appended to the name of all resources

Folder structure::

    - base/: all base manifests shared between environments
      -- deployment.yaml
      -- kustomization.yaml
      -- service.yaml
    - overlays/: environment specific files
      - dev/
        -- kustomization.yaml
        -- replicas.yaml
        -- config.properties
      - prod/
        -- kustomization.yaml
        -- replicas.yaml
        -- config.properties
    - components/: optional parts that can be selectively included per environment
      - mock-server/
        -- kustomization.yaml
        -- deployment.yaml

base/kustomization.yaml::

  apiVersion: kustomize.config.k8s.io/v1beta1
  kind: Kustomization

  commonLabels:
    app: hello-world
  
  resources:
    - service.yaml
    - deployment.yaml

overlay/\*\*/kustomization.yaml::

  apiVersion: kustomize.config.k8s.io/v1beta1
  kind: Kustomization
  namePrefix: prod-
  bases:
  - ../../base
  patchesStrategicMerge:
  - replicas.yaml
  configMapGenerator:
  - name: app-configmap
    files:
    - config.properties

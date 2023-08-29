test-nfs-k8s
============

Based on [this](https://github.com/appscode/third-party-tools/blob/master/storage/nfs/README.md)

Goal is to test multiple NFS servers on a single K8S node, using services. Main problem is that services names aren't resolved at host level, so a fixed service IP is used.

Execute demo with:
```
make build
```

It creates three namespaces (app1, app2, app3) with associated servers and a connected pod via a RWM PVC. Note that PV aren't namespaced.

Cleanup with:
```
make delete
```

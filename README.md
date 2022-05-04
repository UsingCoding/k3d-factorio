# Factorio in k3d cluster

K3d setup with factorio headless server running as Pod in k3s cluster with prometheus and grafana

## References

- [k3s](https://github.com/k3s-io/k3s) - Lightweight Kubernetes
- [k3d](https://github.com/k3d-io/k3d) - Dockerized k3s 
- [Factorio](https://www.factorio.com/) - factory must grow
- [Factorio-docker](https://github.com/factoriotools/factorio-docker) - Docker image for factorio
- [Grafana](https://github.com/grafana/grafana) - For metrics visualization from prometheus 
- [Prometheus](https://github.com/prometheus/prometheus) - Metrics collector

## Run

### Start cluster 

Currently, no automation 🙂

```shell
./bin/create-cluster.sh
```

### Apply factorio configuration

```shell
kubectl apply -f kubernetes/factorio
```

### Apply monitoring set (currently nothing to do here)

```shell
kubectl apply -f kubernetes/monitoring
```

## Access factorio

 - Run factorio
 - Multiplayer -> Connect to address -> localhost:34197 -> Connect  
### Gitlab-authentication in k8s

```
kubectl create secret docker-registry gitlab-registry \
  --docker-server=registry.gitlab.com \
  --docker-username=your-username \
  --docker-password=your-token \
```

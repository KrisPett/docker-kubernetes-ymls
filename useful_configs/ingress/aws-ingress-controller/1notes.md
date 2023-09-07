https://kubernetes.github.io/ingress-nginx/deploy/
https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/nlb-with-tls-termination/deploy.yaml

#### Change These Values

```
  data:
    [344] proxy-real-ip-cidr: XXX.XXX.XXX/XX
  
  annotations:
    service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout: "60"
    service.beta.kubernetes.io/aws-load-balancer-cross-zone-load-balancing-enabled: "true"
    [363] service.beta.kubernetes.io/aws-load-balancer-ssl-cert: arn:aws:acm:us-west-2:XXXXXXXX:certificate/XXXXXX-XXXXXXX-XXXXXXX-XXXXXXXX
    service.beta.kubernetes.io/aws-load-balancer-ssl-ports: https
    [365] service.beta.kubernetes.io/aws-load-balancer-type: nlb -> Application Load Balancer or Network Load Balancer
```

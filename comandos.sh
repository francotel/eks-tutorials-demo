
#Para verificar la versión del tiempo de ejecución del contenedor (container runtime):
kubectl describe nodes | grep -e "Container Runtime Version:"

# Para ver el contexto:
kubectl config current-context


# agregar usuario al configmap

kubectl get configmap aws-auth -n kube-system -o yaml
kubectl edit configmap aws-auth -n kube-system


# crear policy aws alb controller
aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam_policy.json \
    --profile orion-aws


eksctl create iamserviceaccount \
  --cluster=eks-demo \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole \
  --attach-policy-arn=arn:aws:iam::087657543526:policy/AWSLoadBalancerControllerIAMPolicy \
  --profile orion-aws --approve --region us-east-2
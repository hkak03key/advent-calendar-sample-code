# 単一のTerraform Rootディレクトリで複数環境を制御する方法

## 実行方法
```
# stg でとりあえず実行してみる
ENV=stg
terraform init -backend-config=envs/${ENV}.tfbackend
terraform plan -var-file=envs/${ENV}.tfvars
terraform apply -var-file=envs/${ENV}.tfvars

# prd に切り替える
ENV=prd
terraform init -backend-config=envs/${ENV}.tfbackend -reconfigure # init済の状態で設定を切り替えるときは -reconfigure が必要
terraform plan -var-file=envs/${ENV}.tfvars
terraform apply -var-file=envs/${ENV}.tfvars
```

## 実戦投入したい場合
backend が local なので、 backend を local から s3 などのクラウドストレージに切り替えてください。
s3 の例は記事に載っています。

terraform {
  backend "local" {
    # 設定は .tfbackend ファイルに記載
    # initは以下のコマンドで実行する必要がある: 
    # `terraform init -backend-config={{.tfbackend ファイル}}`
  }
}

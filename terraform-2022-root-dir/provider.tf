provider "aws" {
  region = "ap-northeast-1"

  # MEMO: 変数が使えるので、環境ごとにaws profileを指定するなども可能

  default_tags {
    tags = {
      environment = var.env
    }
  }
}

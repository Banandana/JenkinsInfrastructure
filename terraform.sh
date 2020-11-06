terraform plan -var "do_token=${DO_PAT}" -var "pvt_key=$HOME/.ssh/id_rsa"
terraform apply -var "do_token=${DO_PAT}" -var "pvt_key=$HOME/.ssh/id_rsa"

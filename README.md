## Docker image to get list of login and secure notes type of category from 1password vault

## Docker build image
    docker build -t 1password_custom_cli:v1

## Prerequisites
1)  Login Credentials of the 1password(1password address, email_id, secret-key, password)
2) Ceated Vault and Vault category type(login or notes).

## To List all the items from the vault
    
      docker run -it 1password_custom_cli:v1 ./list.sh "PASSWORD" "1PAWSSWORD_ADDRESS" "USER_EMAILID" "SECRET_KEY" "VAULT_NAME" "CATEGORY"

## To get a particular item of type category from the vault
    
    docker run -it 1password_custom_cli:v1 ./get.sh "PASSWORD" "1PAWSSWORD_ADDRESS" "USER_EMAILID" "SECRET_KEY" "VAULT_NAME" "CATEGORY_TYPE" "ITEM_NAME"


set -u                                            
: "$VERSION"
: "$ARM_CLIENT_ID"
: "$ARM_CLIENT_SECRET"
: "$ARM_TENANT_ID"
: "$ARM_SUBSCRIPTION_ID"                          
cd ./scripts                                      
export KUBERNETES_SERVICE_HOST=""                 
terraform init                                    
terraform apply -auto-approve \                   
    -var "app_version=$VERSION" \                 
    -var "client_id=$ARM_CLIENT_ID" \ 
    -var "client_secret=$ARM_CLIENT_SECRET"       
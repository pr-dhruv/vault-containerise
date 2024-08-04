# addgroup vault --> Create the Vault Group
# adduser -S -G vault vault
#   -S          ->  Create a System User without home dir and user Id below 1000
#   -G vault    ->  Add user to vault group
#   vault       ->  vault user
addgroup cloud
adduser -S -G cloud vault
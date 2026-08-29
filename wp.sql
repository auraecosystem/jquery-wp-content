# Copy the SQL dump from your home directory on the server (as created by the previous command)
# NOTE: There must be no space between -p and the password!
scp -C wp-05.ops.jquery.net:~/wordpress.sql .
docker exec -i jquerydb mysql -u root -proot < wordpress.sql

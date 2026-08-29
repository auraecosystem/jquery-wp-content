ssh wpblogs-01.ops.jquery.net

# Export wordpress_jquery, and import as wordpress_blog_jquery_com.
# Use --no-create-db to omit DB name during export, so we can set expected name during import.
sudo -u tarsnap mysqldump -p wordpress_jquery --no-create-db > wordpress_blog_jquery_com.sql;
sudo -u tarsnap mysqldump -p wordpress_jqueryui --no-create-db > wordpress_blog_jqueryui_com.sql;
sudo -u tarsnap mysqldump -p wordpress_jquerymobile --no-create-db > wordpress_blog_jquerymobile_com.sql;
docker exec -it jquerydb mysql -u root -proot

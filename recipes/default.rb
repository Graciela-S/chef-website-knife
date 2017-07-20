#
# Cookbook:: website
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
   action :install
end 

service 'httpd' do
   action [:enable, :start]
end

user 'web_admin' do
   action :create
end

file '/var/www/html/home.html' do
   content '<html> "A person who never made a mistake never tried anything new" ~ Albert Einstein <html>' 
   mode '0755'
   owner 'web_admin'
end

file '/etc/motd' do
   content '¡Hola! ¡Bienvenido a ChefSDK! El mejor lugar para crear cookbooks :)'
   mode '0755'
end

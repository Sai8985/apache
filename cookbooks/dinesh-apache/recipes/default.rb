#
# Cookbook Name:: dinesh-apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package ["httpd", "vim", "php5", "mysql-server" , "ntp"] do
     action:install
end

if node ["platform"] == "ubuntu"
template "/etc/apache2/ports.conf" do
source "ports.conf.erb"
mode"0644"
variables(
         :port => site_data["port"]
          )
end

template "/etc/apache2/sites-available/#{site_name}" do
source "customsite.erb"
mode "0644"
variables(
          :port => site_data["port"],
          :dociment_root => document_root
          end
          )
template "document_root/index.html" do
 source "index.html.erb"




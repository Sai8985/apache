
# Cookbook Name:: raghu-apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#package["httpd"] do
 #     action :install
#end

if node['platform'] == "ubuntu"
       package ["apache2" , "vim" , "php5" , "mysql-server", "ntp"] do
       action :install 
end
end


if node['platform'] == "centos"
package ["httpd" , "vim" , "php" , "mysql-server", "ntp"] do
        action :install
end
end

if node['platform'] == "ubuntu"
    execute "a2dissite default" do
    command "a2dissite default"
  
end
end

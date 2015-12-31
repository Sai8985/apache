#
# Cookbook Name:: supriya-apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package ["httpd" , "vim" , "php" , "mysql-server"] do
        action :install
end


#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
package "apache2"


template "/var/www/html/index.html" do
  source "matanel.html" 
  owner "root"
  group "root"
  mode "0644"
end

service "apache2" do 
  supports :restart => true
  action [:enable, :start]
end


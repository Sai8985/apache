package "apache2" do
	action :install
end	

service "apache2" do
	action [:a2ensite,  :restart]
end



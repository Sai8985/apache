# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "raghuk"
client_key               "#{current_dir}/raghuk.pem"
validation_client_name   "devopsdec-validator"
validation_key           "#{current_dir}/devopsdec-validator.pem"
chef_server_url          "https://api.chef.io/organizations/devopsdec"
cookbook_path            ["#{current_dir}/../cookbooks"]

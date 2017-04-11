reboot '.Net Install' do  
  reason 'Need to reboot after .NET installation'
  action :nothing
end
 
version_arr = registry_get_values('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full', :x86_64)
 
if version_arr[6][:data] != 394_271  
  package '.NET 4.6.1' do
    source 'https://download.microsoft.com/download/E/4/1/E4173890-A24A-4936-9FC9-AF930FE3FA40/NDP461-KB3102436-x86-x64-AllOS-ENU.exe'
    installer_type :custom
    action :install
    returns [0, 3010]
    options '/norestart /passive'
    notifies :request_reboot, 'reboot[.Net Install]', :immediately
    timeout 3000
  end
end  

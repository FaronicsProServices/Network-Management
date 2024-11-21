# This script creates a network share for a specified folder, setting properties such as 
# the share name, maximum allowed connections, and a description for the share.
Invoke-CimMethod -ClassName Win32_Share -MethodName Create -Arguments @{     
Path = 'Enter the folder path'  
Name = 'Enter the folder name'  
Type = [uint32]0 #Disk Drive  
MaximumAllowed = [uint32]25  
Description = 'configure network share with the temp folder'  
}  

# For example:
Invoke-CimMethod -ClassName Win32_Share -MethodName Create -Arguments @{     
Path = 'C:\TestNetworkShare'  
Name = 'TestNetworkShare'  
Type = [uint32]0 #Disk Drive  
MaximumAllowed = [uint32]25  
Description = 'configure network share with the temp folder'  
}  

# Define a WMI query to select network adapters where IP is enabled and DHCP is disabled
$rem = 'SELECT * from Win32_NetworkAdapterConfiguration WHERE IPEnabled=True and DHCPEnabled=False' 

# Release the DHCP lease for the network adapters matching the query
Invoke-CimMethod -MethodName ReleaseDHCPLease -Query $rem 

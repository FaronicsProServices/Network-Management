# Releases the DHCP lease for all network adapters on the system
Invoke-CimMethod -ClassName Win32_NetworkAdapterConfiguration -MethodName ReleaseDHCPLeaseAll

# Renews the DHCP lease for all network adapters on the system
Invoke-CimMethod -ClassName Win32_NetworkAdapterConfiguration -MethodName RenewDHCPLeaseAll

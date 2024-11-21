# Retrieve and display the names and MAC addresses of all network adapters
Get-NetAdapter | Select-Object Name, MacAddress

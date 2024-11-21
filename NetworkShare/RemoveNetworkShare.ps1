# This script deletes a network share named "NetworkShareName" if it exists on the system.
# It checks for the share by querying the Win32_Share class, and if found, invokes the Delete method to remove it.
$wql = 'SELECT * from Win32_Share WHERE Name="NetworkShareName"'
$share = Get-CimInstance -Query $wql
if ($share) {
    Invoke-CimMethod -InputObject $share -MethodName Delete
    Write-Host "Share 'NetworkShareName' has been deleted successfully."
} else {
    Write-Host "Share 'NetworkShareName' not found."
}

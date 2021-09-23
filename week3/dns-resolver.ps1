param($network_prefix, $server)
$network_prefix=Read-Host "Enter a network prefix"
$server=Read-Host "Enter a DNS server"
for($i = 10; $i -lt 50; $i++){
    $network = $network_prefix + "." + $i
    Write-Host($network)
    Write-Output(Resolve-DnsName -DnsOnly $network -Server $server -ErrorAction Ignore)
}
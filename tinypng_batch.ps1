
. .\config.ps1

$user = "api"
$pair = "${user}:${pass}"

$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [System.Convert]::ToBase64String($bytes)

$basicAuthValue = "Basic $base64"

$headers = @{ Authorization = $basicAuthValue }

$regex = '"url":".*"'

md -force tiny

gci * -Include *.png, *.jpg | select -ExpandProperty name | %{
    $return = Invoke-WebRequest -uri "https://api.tinify.com/shrink" -Headers $headers -InFile $_ -Method Post
    $url = Select-string -InputObject $return.Content -Pattern $regex -AllMatches | %{$_.Matches.Value.Replace('"url":"','').Replace('"','')}
    $output = "tiny\" + $_
    Invoke-WebRequest -Uri $url -OutFile $output
}



# Install Install-Module PSWriteColor
Function bitstamp_ticker  {
    $Site = "https://www.bitstamp.net/api/v2/ticker/btcusd/"
    function get-timestamp  {
        return "[{0:HH:mm:ss}]" -f (Get-Date)
    }

    $last_price = Invoke-RestMethod -Uri $Site |ForEach-Object {$_.ask}
    start-sleep -Seconds 3
    $update_price = Invoke-RestMethod -Uri $Site |ForEach-Object {$_.ask}

    if ($last_price -gt $update_price){
       $change = "{0:N2}" -f ($last_price - $update_price)
       $last_priceminus = Write-Color -Text (get-timestamp), " Bitstamp: ",$update_price, " -", $change
        }
        elseif ($last_price -lt $update_price){
        $change = "{0:N2}" -f ($update_price - $last_price)
       $last_priceplus  = Write-Color -Text (get-timestamp), " Bitstamp: ",$update_price, " +", $change
       return "{0:N2}" -f $last_priceplus
    }
    else{
       $last_priceequal = Write-Color -Text (get-timestamp), " Bitstamp: ",$update_price
       return "{0:N2}" -f $last_priceequal
    }

    $ticker_price =  Invoke-RestMethod -Uri $Site |ForEach-Object {$_.ask}
}
do
{
    bitstamp_ticker
    start-sleep -Seconds 2

}until($infinity)



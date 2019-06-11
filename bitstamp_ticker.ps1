
Function bitstamp_ticker  {

    $Site = "https://www.bitstamp.net/api/v2/ticker/btcusd/"
    $ticker_price =  Invoke-RestMethod -Uri $Site |ForEach-Object {$_.ask}
    write-host $ticker_price
}
do
{
    bitstamp_ticker
    start-sleep -Seconds 2

}until($infinity)



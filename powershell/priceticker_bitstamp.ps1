$Host.UI.RawUI.WindowTitle = "Bitstamp: BTC/USD"
Function Send-Alarm
{
    Invoke-WebRequest -Uri "https://github.com/perplexityjeff/PowerShell-Troll/raw/master/AudioFiles/Wake-up-sounds.wav" -OutFile "Wake-up-sounds.wav"

    $filepath = ((Get-Childitem "Wake-up-sounds.wav").FullName)
    
    Write-Host $filepath

    $sound = new-Object System.Media.SoundPlayer;
    $sound.SoundLocation=$filepath;
    $sound.Play();
}

Function bitstamp_last_price($colorcolor) {
    #[AllowEmptyString()]
    function Get-TimeStamp {
        return "[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)   
    }
    
    $last_price =  & "$env:HOMEDRIVE\python36\python.exe" -c "import ccxt; bitstamp = ccxt.bitstamp();last =  bitstamp.fetch_ticker('BTC/USD')['last'];print (last)"
    start-sleep -Seconds 5
    $update_price = & "$env:HOMEDRIVE\python36\python.exe" -c "import ccxt; bitstamp = ccxt.bitstamp();last = bitstamp.fetch_ticker('BTC/USD')['last'];print (last)"
     
    if ($last_price -gt $update_price){
       $change = "{0:N2}" -f ($last_price - $update_price)
       $last_priceminus = Write-Color -Text (Get-TimeStamp), " Bitstamp: ",$update_price, " -", $change -Color White,White,Red,White
       return "{0:N2}" -f $last_priceminus
     }
    elseif ($last_price -lt $update_price){
       $change = "{0:N2}" -f ($update_price - $last_price)
       $last_priceplus  = Write-Color -Text (Get-TimeStamp), " Bitstamp: ",$update_price, " +", $change -Color White,White,Green,White
       return "{0:N2}" -f $last_priceplus
    }
    else{
       $last_priceequal = Write-Color -Text (Get-TimeStamp), " Bitstamp: ",$update_price  -Color White,White
       return "{0:N2}" -f $last_priceequal
    }
}
do
{ 
    bitstamp_last_price
    start-sleep -Seconds 5
    

}until($infinity)

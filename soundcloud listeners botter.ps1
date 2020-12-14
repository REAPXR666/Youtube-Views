Import-Module Selenium
# To start a Chrome Driver



$i=1
Do {
    $i
    $Driver = Start-SeChrome -Incognito
   
#-Incognito
Enter-SeUrl "URL" -Driver $Driver
Start-Sleep -Seconds 5

$Element = Find-SeElement -Driver $Driver -className "paper-button"
Invoke-SeClick -className $Element

$waittime = Get-Random -Maximum song lengh -Minimum 50
Start-Sleep -Seconds $waittime
#$PlayElement = Find-SeElement -Driver $Driver -ClassName "widget-progress"

$Driver.Dispose()

    $i++
    }
While ($i -le 800)
#change 800 to the amount of listens you want, i reccommend 800 to start with

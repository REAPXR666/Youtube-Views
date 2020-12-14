Import-Module Selenium
# To start a Chrome Driver



$i=1
Do {
    $i
    $Driver = Start-SeChrome -Incognito
   
#-Incognito
Enter-SeUrl "https://www.youtube.com/watch?v=IYJ_w4j-h8E" -Driver $Driver
Start-Sleep -Seconds 5

$Element = Find-SeElement -Driver $Driver -className "paper-button"
Invoke-SeClick -className $Element

$waittime = Get-Random -Maximum 241 -Minimum 50
Start-Sleep -Seconds $waittime
#$PlayElement = Find-SeElement -Driver $Driver -ClassName "widget-progress"

$Driver.Dispose()

    $i++
    }
While ($i -le 800)
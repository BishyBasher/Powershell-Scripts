#Prompt user for name
$name = Read-Host "What is your full name?"

#Greet User
Write-Host "Hello, $name!"

#Ask user for their bedtime
$bedtime = Read-Host "What time do you want to go to bed, $($name)?"

#Confirm bedtime with user
Write-Host "Got it, $name! I'll set a reminder for your bedtime at $bedtime."

#Reminder
while ($true) {
    if ((Get-Date).ToString("hh:mm tt") -eq $bedtime) {
        Write-Host "Reminder: It's time for bed!" -ForegroundColor Red
        Start-Sleep -Seconds 60
    }
    Start-Sleep -Seconds 30
}
Exit
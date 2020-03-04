$machines = 'pomerojm-win'
foreach ($machine in $Machines) {
$pt = (Get-Counter -Counter "\proccessor(_Total)\% Proccessor Time" -SampleInterval 1 -MaxSamples 3).countersamples.cookedvalue
$sample = 1
foreach ($p in $pt) {
$date = Get-Date -Format g
"{3} - Sample{2}: Cpu is At {0} on {1}" -f [int]$p, $machine, $sample, $date | Out-File -Append C:\Logs\CPU.txt
$sample++
}
}


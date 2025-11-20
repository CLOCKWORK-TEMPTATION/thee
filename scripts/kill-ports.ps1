# Kill processes on ports 3001 and 5000
Write-Host "=== Stopping The Copy Services ===" -ForegroundColor Yellow
Write-Host ""

# Kill port 3001 (Backend)
$port3001 = Get-NetTCPConnection -LocalPort 3001 -ErrorAction SilentlyContinue
if ($port3001) {
    $processes3001 = $port3001.OwningProcess | Select-Object -Unique
    foreach ($processId in $processes3001) {
        Write-Host "Killing process $processId on port 3001..." -ForegroundColor Cyan
        Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
    }
}

# Kill port 5000 (Frontend)
$port5000 = Get-NetTCPConnection -LocalPort 5000 -ErrorAction SilentlyContinue
if ($port5000) {
    $processes5000 = $port5000.OwningProcess | Select-Object -Unique
    foreach ($processId in $processes5000) {
        Write-Host "Killing process $processId on port 5000..." -ForegroundColor Cyan
        Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
    }
}

# Kill Redis processes
$redisProcesses = Get-Process -Name "redis-server" -ErrorAction SilentlyContinue
if ($redisProcesses) {
    foreach ($process in $redisProcesses) {
        Write-Host "Killing Redis process $($process.Id)..." -ForegroundColor Cyan
        Stop-Process -Id $process.Id -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ""
Write-Host "=== All The Copy Services Stopped! ===" -ForegroundColor Green
Write-Host "   To start again: pnpm start" -ForegroundColor Magenta

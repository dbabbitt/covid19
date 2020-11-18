
# Get jupyter lab set up
$DisplayName = "COVID-19"
$RepositoryPath = "notebooks/covid19"
$EnvironmentName = "covid19"
."C:\Users\dev\Documents\repositories\notebooks\ps1\create_conda_environment.ps1"

# JupyterLab sessions always reside in a workspace. Workspaces contain the state of
# JupyterLab: the files that are currently open, the layout of the application areas
# and tabs, etc. When the page is refreshed, the workspace is restored.

# The default workspace does not have a name and resides at the primary /lab URL:
# http(s)://<server:port>/<lab-location>/lab

# Restart jupyter lab
Write-Host ""
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
Write-Host "                             Restarting Jupyter Lab" -ForegroundColor Green
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
jupyter lab

Write-Host ""
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
Write-Host "                          Getting the Jupyter Lab token" -ForegroundColor Green
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
$TokenRegex = [regex] '(?m)http://localhost:8888/\?token=([^ ]+) :: '
$ListResults = (jupyter notebook list) | Out-String
$TokenString = $TokenRegex.Match($ListResults).Groups[1].Value
Write-Host $ListResults

# Open the webpage in Chrome
Write-Host ""
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
Write-Host "                          Opening the workspace in Chrome" -ForegroundColor Green
Write-Host "---------------------------------------------------------------------------------" -ForegroundColor Green
# All other workspaces have a name that is part of the URL:
# http(s)://<server:port>/<lab-location>/lab/workspaces/foo
Start-Process "chrome.exe" "http://localhost:8888/lab/workspaces/${EnvironmentName}&token=${TokenString}"
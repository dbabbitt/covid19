
# Get jupyter lab set up
$DisplayName = "COVID-19"
$RepositoryPath = "notebooks/covid19"
$EnvironmentName = "covid19"
."${RepositoriesDirectory}\notebooks\ps1\create_conda_environment.ps1"

# JupyterLab sessions always reside in a workspace. Workspaces contain the state of
# JupyterLab: the files that are currently open, the layout of the application areas
# and tabs, etc. When the page is refreshed, the workspace is restored.

# The default workspace does not have a name and resides at the primary /lab URL:
# http(s)://<server:port>/<lab-location>/lab

<# # Restart jupyter lab
Write-Host ""
Write-Host "-------------------------------------------------------------------------------" -ForegroundColor Green
Write-Host "                             Restarting Jupyter Lab" -ForegroundColor Green
Write-Host "-------------------------------------------------------------------------------" -ForegroundColor Green
jupyter lab #>

# Launch the jupyter server manually
Read-Host "Launch the Jupyter server manually, then press ENTER to continue..."
."${RepositoriesDirectory}\notebooks\ps1\view_lab_in_chrome.ps1"
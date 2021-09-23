
# cd $Env:UserProfile\Documents\GitHub\covid19\ps1
# clear
# .\create_covid19_conda_environment.ps1

# Set up global variables
$DisplayName = "COVID-19"
$RepositoryPath = "covid19"
$EnvironmentName = "covid19"
."${RepositoriesDirectory}\notebooks\ps1\create_conda_environment.ps1"
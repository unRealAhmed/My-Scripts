# Prompt the user for the location where they want to create the Nest.js project
$projectLocation = Read-Host "Enter the location where you want to create the Nest.js project"

# Prompt the user for the project name
$projectName = Read-Host "Enter your NestJS project name"

# Change to the specified project location
Set-Location $projectLocation

# Create a new NestJS app in the specified location
nest new $projectName

# Navigate into the project directory
Set-Location $projectName

# Open Visual Studio Code in the project directory
code .

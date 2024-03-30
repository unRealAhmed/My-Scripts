# Prompt the user for the location where they want to create the Nest.js project
$projectLocation = Read-Host "Enter the location where you want to create the Nest.js project"

# Prompt the user for the project name
$projectName = Read-Host "Enter your NestJS project name"

# Change to the specified project location
Set-Location $projectLocation
Write-Output "Changed to project location: $projectLocation"

# Create a new NestJS app in the specified location
nest new $projectName
Write-Output "Created Nest.js project: $projectName"

# Navigate into the project directory
Set-Location $projectName
Write-Output "Changed to project directory: $projectName"

# Open Visual Studio Code in the project directory
code .
Write-Output "Opened Visual Studio Code in project directory"

# Modify tsconfig.json
$tsconfigContent = @"
{
  "compilerOptions": {
    "module": "commonjs",
    "declaration": true,
    "removeComments": true,
    "emitDecoratorMetadata": true,
    "experimentalDecorators": true,
    "allowSyntheticDefaultImports": true,
    "target": "ES2021",
    "sourceMap": true,
    "outDir": "./dist",
    "baseUrl": "./",
    "incremental": true,
    "skipLibCheck": true,
    "strictNullChecks": true,
    "strict": true,
    "noImplicitAny": false,
    "strictBindCallApply": false,
    "forceConsistentCasingInFileNames": true,
    "noFallthroughCasesInSwitch": false
  }
}
"@
Set-Content -Path "tsconfig.json" -Value $tsconfigContent
Write-Output "Modified tsconfig.json"

# Install the most common packages that i use
npm i @nestjs/swagger class-validator class-transformer
Write-Output "Installed common packages"

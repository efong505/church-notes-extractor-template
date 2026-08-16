# Define root folder
$root = "C:\Users\Ed\Documents\Church\church-notes-extractor-template"

# List of folders to create
$folders = @(
    "$root\.github/workflows",
    "$root\Service and Devotional Notes",
    "$root\personal-notes",
    "$root\family-notes",
    "$root\samples",
    "$root\tools",
    "$root\config",
    "$root\prompts"
)

# List of files to create
$files = @(
    "$root\.gitignore\workflows\setup.yml",
    "$root\.gitignore\workflows\build-index.yml"
    "$root\Service and Devotional Notes\.gitkeep",
    "$root\personal-notes\.gitkeep",
    "$root\family-notes\.gitkeep",
    "$root\samples\sample-service.md",
    "$root\samples\sample-devotional.md",
    "$root\samples\sample-personal.md"
    "$root\tools\build-index.py",
    "$root\tools\configure.py"
    "$root\config\church-notes.yml",
    "$root\prompts\chatgpt-project-instructions.md"
    "$root\INDEX.md",
    "$root\README.md",
    "$root\SETUP.md"
)

# Create folders
foreach ($folder in $folders) {
    if (!(Test-Path -Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
    }
}

# Create files
foreach ($file in $files) {
    if (!(Test-Path -Path $file)) {
        New-Item -ItemType File -Path $file -Force | Out-Null
    }
}

Write-Host "PowerShell file structure created successfully." -ForegroundColor Green
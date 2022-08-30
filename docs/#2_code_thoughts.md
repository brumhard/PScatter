## #2 Code thoughts
#### Config structure
```JSON
{
    "main": {
        "name": "test.ps1",
        "buildName": "testScript.ps1" //alternative name for built script
    },
    "template": "Azure"
}
```

#### How do PScatter directives look like?
##### Option 1
```PowerShell
Initialize-PScatter
$PScatter.Import("lel")
```
Pattern: `\$PScatter\.Import\("\S*"\)`
\+ exact match -> easy to parse
\- autoimport not possible -> some helper function needed like Init-PScatter



##### Option 2
```PowerShell
Import-PScatterModuleFile -Path "lel"
Import -Path "lel"
PScatter\Import -Path "lel"
```
Pattern: `Import-PScatterModuleFile.*-Path "\S*".*`
\- harder to parse (to many ways of writing things for normal cmdlets)
\- invalid if -Path is not explicitly set
\- some poeple could use aliases -> invalid
\+ autoimport available


##### Solution?
Another option would be define to mode cmdlets:
Import-PScatterModuleFile -Path "lel" in normal execution mode imports the module
if $script:PScatterBuildFile is set 
YOOOOOOOOOOO INSAAAAAAAAAANE LOOK AT PSCR.psm1 for incredible solution without parsing needed

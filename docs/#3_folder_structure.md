## #3  Folder Structure
#### Script style
- src/ (or cmdlet)
  - help.md
  - main.ps1
  - functions1.ps1
  - functions2.ps1
- test/
  - functions1.Tests.ps1
- CI/
  - psakebuild.ps1
  - pipeline.yaml (different pipelines for different CI products)
- .gitignore
- .git/
- (PSCR.config.json)

#### Module style
- src/
  - cmdlet1
    - functions1.ps1
    - cmdlet1.ps1
  - cmdlet2
    - ...
- docs/
  - en-US
    - cmdlet1.help.md
    - cmdlet2.help.md
- test/
  - cmdlet1
    - function1.Tests.ps1
    - ...
  - cmdlet2
    - function2.Tests.ps1
- rest like above
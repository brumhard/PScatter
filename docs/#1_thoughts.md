## #1 Thoughts

#### Key parts
- platyPS for markdown external help
- Plaster for inital setup
- templates
  - Standard templates and way to supply your own
- comments as insertion indicator 
  - `PScatter.Import(<Path\>.psm1)` to import functions file (test wheter only functions)
    - wildcard support
  - `PScatter.Help(<helpfile\>.md)` to import platyPS functions
  - `PScatter.Config(<config\>.json)` to import the local config
- Pester as standard testing framework
- Psake as build tool, automatically supply standard CI build tool
- Commands to optimize the whole prcess (PScatter CLI)
  - `New-PScatterCommand`
    - add a new cmdlet to all needed files...
  - `New-PScatterEnv`
    - init folder structure and framework config (see [#3  Folder Structure](#3_folder_structure.md))

---

#### Discuss
- local config json or psd1
  -> json
- Config for framework in a json 
  - where to mark which file is the main file, autodetection?
    -> the ps1 file as all imported files are psm1
  - requires, autoinstall in buildprocess?
- help into a json

---

#### Thinks to ask during setup
- git config, gitignore
- pester
- template
- CI: which one, Psake script
- name

---

#### Maybe
- VSCode integration, intellisense


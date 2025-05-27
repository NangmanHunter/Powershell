# SubDirectoryCreate
## SingleSubDirectoryCreate
```
📁Glossary
 └📁01SynOnym
```
- ```ps1
  mkdir Glossary/01SynOnym
  ```

## MultiSubDirectoryCreate
```
📁Glossary
 └📁01SynOnym
 └📁02AntOnym
 └📁03HypOnym
```
- ```ps1
  mkdir Glossary/01SynOnym,
        Glossary/02AntOnym,
        Glossary/03HypOnym
  ```
- ```ps1
  ("01SynOnym","02AntOnym","03HypOnym") | % { mkdir "Glossary/$_" }
  ```
- ```ps1
  "01SynOnym", "02AntOnym", "03HypOnym" | ForEach-Object {
      New-Item -ItemType Directory -Path "Glossary/$_"
  }
  ```
- ```ps1
  foreach ($name in "01SynOnym", "02AntOnym", "03HypOnym") {
      New-Item -ItemType Directory -Path "Glossary/$name"
  }
  ```

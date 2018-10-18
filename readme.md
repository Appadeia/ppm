# PPM - Puyo Package Manager
## Commands
```
    ppm in <package>     | install a package
    ppm remove <package> | remove a package
    ppm installed        | list installed packages
```
## Example .ppmpkg file
```
meta:
  name: "krita"
  pretty: "Krita"
  desc: "art program under the KDE umbrella"
  author: "KDE team"
  maintainer: "Carson Black"
  version: "4.1.5"
source:
  url: "https://download.kde.org/stable/krita/4.1.5/krita-4.1.5-x86_64.appimage"
  tar: "no"
  filename: "krita-4.1.5-x86_64.appimage"
desktop:
  generic: "Art Tool"
  name: "Krita"
  type: "Application"
  exec: "$ppm/pkgs/krita-4.1.5-x86_64.appimage"
  icon: "krita"
  terminal: "false"
```

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
  exec: "$ppm/.pkgs/krita-4.1.5-x86_64.appimage"
  icon: "krita"
  terminal: "false"
```
## Explanation of .ppmpkg file format
```
meta: Things used to identify the package to the package manager
  name: the package name, the one the computer uses to keep track of packages
  pretty: the pretty package name, for being prettier to humans
  desc: a description of the package
  author: whoever made the program in the package
  maintainer: whoever packaged the program
  version: version
source: where your package files come from
  url: the url to the file you're fetching
  tar: is it a tar or just a binary
  filename: the filename of the binary/tar
desktop: the .desktop file
  generic: the generic name
  name: the actual name
  type: the type of application
  exec: what it runs. $ppm will be expanded to the ppm directory here
  icon: what icon to use
  terminal: is it a terminal application?
```

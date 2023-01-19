## Git / Github

List tracked files
> git ls-tree -r [brach name] --name-only



## Pacman

[Archlinux pacman tip and trick](https://wiki.archlinux.org/title/pacman/Tips_and_tricks)

Synchronize repository
> pacman -Syu

List foreing packages
> pacman -Qm

List explicity installed packages (that are not direct or optional depedency) (print package name only)
> pacman -Qe(nt) (pacman -Qe | awk '{print $1}')

Remove packages and their depedencies
> pacman -Rn

Instal list of packages from a list
> pacman -S --needed - < pkglist.txt

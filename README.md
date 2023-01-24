![archlinux](https://github.com/BeltaL0wda/dotfiles/blob/main/.dotfile.png)

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

## Docker

[Archlinux docker](https://wiki.archlinux.org/title/docker)

Enable Docker Deamon docker.service named Docker Engine
> systemctl enable docker.service

Add user to docker groug
> sudo gpasswd -a user group

Show Docker Engine infos
> docker info

Show running docker containers (and this ID)
> docker ps (-a)

List all docker images
> docker images

Delete container by ID
> docker rm container.id

Kill container by ID
> docker kill container.id

Delete image by ID
> dokcer rmi image.id

## Systemd

[Archlinux SystemD](https://wiki.archlinux.org/title/systemd)

Show unit status
> systemctl status unit

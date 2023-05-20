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

Remove packages and depedencies
> pacman -Rns

Install list of packages from a list
> pacman -S --needed - < pkglist.txt

## Docker

[Archlinux docker](https://wiki.archlinux.org/title/docker)

Build dokcer image from Dockerfile in current directory
> docker build -t <image tag name> . 

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
> docker kill <container id>

Delete image by ID
> docker rmi image.id

Make volume mount
> docker volume create <volume name>

Mount it to container
> dokcer run --mount type=volume,src=<volume name>,target=<container dir> <image name>

Inspect volume mount
> docker volume inspect

Create network
> docker network create <network name>

List network
> docker network ls

Watch logs
> docker logs -f <container-id>

Go inside container
> docker exec -it <container-id> <command>

Launch and run shell
> docker run -it --entrypoint=/bin/sh <image name>

## Systemd
[Archlinux SystemD](https://wiki.archlinux.org/title/systemd)

Show unit status
> systemctl status unit

List mounted point
> findmnt

Stop all curently running container and unmount any running images
> systemctl stop docker.service 

## Neovim
[Neovim configuration for beginners](https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84)

d: delete operator
	$: to end of line 
	w: untill the start of next word
	e: to the end of current word
	0: to the start of line
	d: Delete line

Delete 2 words untill the start of next word
> d2w

Delete 3 lines
> 2dd

**u**: undo the last command
	U: fix whole line

**<C-r>**: redo the commandes

p: put previously deleted text
P: put previously deleted text before cursor

r: replace the character under cursor
R: replace various characters

<C-g>: show location in filesystem and file itself
 
G: move at the end
gg: move at start

Move to line 6
> 6G

<C-o>: go back
<C-i>: fo forward

/: search
	n: next match
	N: previous match

%: move to matching ),] or }

y: copy text
	w: copy word

Select from cursor to endline and copy
> v
> $
> y

Change "old" to "new" on the line
> :s/old/new/

Matching all occurence on the line
> :s/old/new/g

Matching all occurence on the file
> :**%**s/old/new/g

Matching all occurence between 2 line
> :#,#s/old/new/g

!<command> : execute command and output below

## Screen
Take screen capture of root window
> xwd -root -out [filename.xwd]

Convert xwd file to png file
> gm convert [file.xwd] [file.png]

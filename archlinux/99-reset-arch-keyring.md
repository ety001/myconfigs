Remove or reset all the keys installed in 
your system by removing the `/etc/pacman.d/gnupg`
directory (as root) and by rerunning 
`pacman-key --init` followed by 
`pacman-key --populate` to re-add the default keys.

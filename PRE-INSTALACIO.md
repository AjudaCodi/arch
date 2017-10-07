# Sistema d'arxius
- [link castella](https://wiki.archlinux.org/index.php/File_systems_(Espa%C3%B1ol))
## Btrfs
- [Extret de: aquí](https://blog.desdelinux.net/btrfs-usarlo-no-usarlo/)
- Desfragmentació més del 95% ocupat
- Desenvolupat *Oracle* i *Red Hat*
- Estabilitat si algo falla
- Facilitat en reparar
- Administració de sistema
- SSD, optimitzacions i vida més llarga
- Copia de seguretat incremental
- Conversió de ext3/4 a Btrfs
> No rendiment
- gestió
- seguretat
- característiques avançades
> Recomanat per '/'
- Control davant el rendiment

### Français
- [link](https://wiki.archlinux.fr/Btrfs)
- Compressió millora prestacions
- -`# btrfs filesystem defragment -r -v -clzo /`
- -`mount -o compress=lzo /dev/sdxY /mnt/`
> Scrub
- Eina molt útil per recuperar (imaginat que ha petat tot en l'última actualització)

### Altres
- [btrfs format pdf](http://marc.merlins.org/linux/talks/2015/Btrfs-LCA2015/Btrfs.pdf)

### Jo
- Penso que és complex
- Útil per '/' pel sistema de seguretat

## XFS
- velocitat
- escalabilitat
- desfragmentació en línia
- diari
> No sempre més ràpid que ext4
> Aconsellat per '/home'

## ZFS
- Grans dades
- Auto reparació

## ext
- 2 No gaire recomanat per '/' ni per '/home'.
- 3 Fins a 32T i fiable /menys que JFS, XFS/
- 4 Menys ús CPU + velocitat d'escriptura i lectura
- 4 Desfragmentació en línia

## F2FS
- Memòria flash

## Swap
- Memòria d'intercanvis

## Vfat
- Molt universal per a generar claus USB

## Sistemes d'arxius
[link catellà](https://wiki.archlinux.org/index.php/Partitioning_(Espa%C3%B1ol))


# Recomanacions de particions
[Link](https://wiki.archlinux.org/index.php/partitioning)
## Recomanació 1:
- /boot		1G			ext4
- swap		2 vegades RAM
- /		50 GB			ext4
- /home		La resta		ext4


## Ús real meu
`df -h`
- /boot		119M	240M	54%
- /boot/efi	132K	510M	1%
- /		20G	84G	19%		He instalat tot i més
- /home		4.8G	296G	2%
- /dev		0
- /dev/shm	0
- /run		768K
- /run/user/100	12K
- /sys/fs/group	0
- /tmp		20K

## Consell meu
- /boot		1G			ext4
- swap		Màx 2G			[SWAP]
- /		50G			ext4
- /home		resta			ext4


# Desfragmentar
Només existeixen problemes amb discos durs magnètics
[link](https://www.linuxadictos.com/tutorial-desfragmentar-tu-disco-duro-bajo-gnu-linux.html)
Sembla important desfragmentar, tot i que si tens espai de sobres, no hauries de tenir problemes.
## Comprobar el bon funcionament
be amb `base` de archlinux
`e4defrag -c /dev/sda\d`
o
`e4defrag -c /home/user/fileLike`

# Compresió
[Comparacions](http://blog.erdemagaoglu.com/post/4605524309/lzo-vs-snappy-vs-lzf-vs-zlib-a-comparison-of)

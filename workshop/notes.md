/dev/sdb1 on /run/media/mannchri/e8cc7c02-9e62-430c-a680-5773effc1e7a type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sdb3 on /run/media/mannchri/0b46aa16-1916-45d3-8577-fdc0ad917bef type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sdb4 on /run/media/mannchri/70d74d2e-077f-4f94-8dff-1c4e127cc49b type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)

/dev/sdb1       2,0G   60M  1,8G   4% /run/media/mannchri/e8cc7c02-9e62-430c-a680-5773effc1e7a
/dev/sdb3       961G  826G   87G  91% /run/media/mannchri/0b46aa16-1916-45d3-8577-fdc0ad917bef
/dev/sdb4       1,8T  1,6T  110G  94% /run/media/mannchri/70d74d2e-077f-4f94-8dff-1c4e127cc49b

UUID=e8cc7c02-9e62-430c-a680-5773effc1e7a /boot          ext4    defaults,noatime 0 2
# /UUID=867b8d50-3d35-4775-9140-3fb6a8ebf793 swap           swap    defaults,noatime 0 0
tmpfs                                     /tmp           tmpfs   defaults,noatime,mode=1777 0 0
# /dev/disk/by-label/WIND                   /mnt/wind      ntfs rw,nosuid,nodev,relatime,user_id=0,group_id=0,allow_other
UUID=70d74d2e-077f-4f94-8dff-1c4e127cc49b /mnt/wind      ext4 defaults,noatime 0 2
# /mnt/wind                                /home/mannchri/wind none defaults,bind 0 0
resdigidell:/export/rd1                   /mnt/rd1       nfs     defaults,user,proto=tcp,port=2049,noauto 0 0
resdigidell:/export/rd2                   /mnt/rd2       nfs     defaults,user,proto=tcp,port=2049,noauto 0 0
resdigidell:/export/rd3                   /mnt/rd3       nfs     defaults,user,proto=tcp,port=2049,noauto 0 0
resdigidell:/export/rd4                   /mnt/rd4       nfs     defaults,user,proto=tcp,port=2049,user=nfsuser,noauto 0 0
rosest330:/mnt/chrisdatalive              /mnt/chrisdatalive       nfs     defaults,user,proto=tcp,port=2049,noauto 0 0
UUID=E21A-D2D3  /boot/efi       vfat    defaults      0       1

devtmpfs on /dev type devtmpfs (rw,nosuid,size=806140k,nr_inodes=2012914,mode=755)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=3,mode=620,ptmxmode=666)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,size=8061380k)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
tmpfs on /run type tmpfs (rw,nosuid,nodev,size=4030692k,mode=755)
ramfs on /run/keys type ramfs (rw,nosuid,nodev,relatime,mode=750)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
/dev/nvme0n1p2 on / type ext4 (rw,relatime)
/dev/nvme0n1p2 on /nix/store type ext4 (ro,nosuid,nodev,relatime)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
efivarfs on /sys/firmware/efi/efivars type efivarfs (rw,nosuid,nodev,noexec,relatime)
bpf on /sys/fs/bpf type bpf (rw,nosuid,nodev,noexec,relatime,mode=700)
tracefs on /sys/kernel/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
mqueue on /dev/mqueue type mqueue (rw,nosuid,nodev,noexec,relatime)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,nosuid,nodev,relatime,pagesize=2M)
debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /run/credentials/systemd-journald.service type tmpfs (ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,noswap)
fusectl on /sys/fs/fuse/connections type fusectl (rw,nosuid,nodev,noexec,relatime)
configfs on /sys/kernel/config type configfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /run/wrappers type tmpfs (rw,nodev,relatime,size=8061380k,mode=755)
/dev/nvme0n1p1 on /boot type vfat (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=1612272k,nr_inodes=403068,mode=700,uid=1000,gid=100)
gvfsd-fuse on /run/user/1000/gvfs type fuse.gvfsd-fuse (rw,nosuid,nodev,relatime,user_id=1000,group_id=100)
portal on /run/user/1000/doc type fuse.portal (rw,nosuid,nodev,relatime,user_id=1000,group_id=100)
/dev/sda6 on /run/media/mannchri/SYSTEM type vfat (rw,nosuid,nodev,relatime,uid=1000,gid=100,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,showexec,utf8,flush,errors=remount-ro,uhelper=udisks2)
/dev/sda2 on /run/media/mannchri/LIND type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sda5 on /run/media/mannchri/ORDIROOT type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sda3 on /run/media/mannchri/ORDIC type ntfs3 (rw,nosuid,nodev,relatime,uid=1000,gid=100,iocharset=utf8,uhelper=udisks2)
/dev/sda4 on /run/media/mannchri/ORDID type ntfs3 (rw,nosuid,nodev,relatime,uid=1000,gid=100,iocharset=utf8,uhelper=udisks2)
/dev/sda7 on /run/media/mannchri/CHRISLAPTOPMANJ type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sdb1 on /run/media/mannchri/e8cc7c02-9e62-430c-a680-5773effc1e7a type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sdb3 on /run/media/mannchri/0b46aa16-1916-45d3-8577-fdc0ad917bef type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
/dev/sdb4 on /run/media/mannchri/70d74d2e-077f-4f94-8dff-1c4e127cc49b type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)

[mannchri@mannchri:~]$ ls -l /dev/disk/by-uuid/
total 0
lrwxrwxrwx 1 root root 10 janv. 17 20:48 0b46aa16-1916-45d3-8577-fdc0ad917bef -> ../../sdb3
lrwxrwxrwx 1 root root 10 janv. 17 19:35 11C91A6879775B42 -> ../../sda1
lrwxrwxrwx 1 root root 10 janv. 17 19:35 1CB2-E8D4 -> ../../sda6
lrwxrwxrwx 1 root root 15 janv. 16 07:14 2332c6bc-f7cf-4836-a1d4-9b98d60e925f -> ../../nvme0n1p3
lrwxrwxrwx 1 root root 10 janv. 17 19:35 23ABA30F5F9BB3BD -> ../../sda4
lrwxrwxrwx 1 root root 10 janv. 17 19:35 59FE3F8200D09110 -> ../../sda3
lrwxrwxrwx 1 root root 10 janv. 17 20:48 70d74d2e-077f-4f94-8dff-1c4e127cc49b -> ../../sdb4
lrwxrwxrwx 1 root root 10 janv. 17 19:35 7fd5a766-9fa4-4049-92fa-2e981ecddc79 -> ../../sda5
lrwxrwxrwx 1 root root 10 janv. 17 20:48 867b8d50-3d35-4775-9140-3fb6a8ebf793 -> ../../sdb5
lrwxrwxrwx 1 root root 15 janv. 16 07:14 91a2140b-1152-4d32-95fb-369f47aa0010 -> ../../nvme0n1p2
lrwxrwxrwx 1 root root 10 janv. 17 19:35 bef6166d-1120-487a-b4bf-ceea31a5b434 -> ../../sda2
lrwxrwxrwx 1 root root 15 janv. 16 07:14 C217-434E -> ../../nvme0n1p1
lrwxrwxrwx 1 root root 10 janv. 17 20:48 E21A-D2D3 -> ../../sdb2
lrwxrwxrwx 1 root root 10 janv. 17 20:48 e8cc7c02-9e62-430c-a680-5773effc1e7a -> ../../sdb1
lrwxrwxrwx 1 root root 10 janv. 17 19:35 e8fc0f12-8448-4f5f-ac5f-8e7a3d8d0b64 -> ../../sda7

[mannchri@mannchri:~]$ ls -l /dev/disk/by-label/
total 0
lrwxrwxrwx 1 root root 10 janv. 17 19:35 CHRISLAPTOPMANJ -> ../../sda7
lrwxrwxrwx 1 root root 10 janv. 17 19:35 LIND -> ../../sda2
lrwxrwxrwx 1 root root 10 janv. 17 19:35 ORDIC -> ../../sda3
lrwxrwxrwx 1 root root 10 janv. 17 19:35 ORDID -> ../../sda4
lrwxrwxrwx 1 root root 10 janv. 17 19:35 ORDIROOT -> ../../sda5
lrwxrwxrwx 1 root root 15 janv. 16 07:14 root -> ../../nvme0n1p2
lrwxrwxrwx 1 root root 15 janv. 16 07:14 swap -> ../../nvme0n1p3
lrwxrwxrwx 1 root root 10 janv. 17 20:48 SWAP -> ../../sdb5
lrwxrwxrwx 1 root root 10 janv. 17 19:35 SYSTEM -> ../../sda6

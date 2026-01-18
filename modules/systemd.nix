{
  pkgs,
  lib,
  vars,
  ...
}:
{
  systemd = {
    mounts = [
      # "# UUID=E21A-D2D3                            /mnt/nvme2024//boot/efi      vfat    umask=0077 0 2"
      {
        description = "Manjaro Root 0 1";
        what = "UUID=0b46aa16-1916-45d3-8577-fdc0ad917bef";
        where = "/mnt/nvme2024/";
        type = "ext4";
        options = "defaults,noatime";
      }
      {
        description = "Manjaro Boot 0 2";
        what = "UUID=e8cc7c02-9e62-430c-a680-5773effc1e7a";
        where = "/mnt/nvme2024/boot";
        type = "ext4";
        options = "defaults,noatime";
      }
      # "# /UUID=867b8d50-3d35-4775-9140-3fb6a8ebf793 swap           swap    defaults,noatime 0 0"
      # "# /dev/disk/by-label/WIND                   /mnt/wind      ntfs rw,nosuid,nodev,relatime,user_id=0,group_id=0,allow_other"
      {
        description = " 0 2";
        what = "UUID=70d74d2e-077f-4f94-8dff-1c4e127cc49b";
        where = "/mnt/nvme2024/wind";
        type = "ext4";
        options = "defaults,noatime";
      }
      # "# /mnt/wind                                /home/mannchri/wind none defaults,bind 0 0"
      {
        description = "t720 RD1 0 0";
        what = "roseslant720:/export/rd1";
        where = "/mnt/rosest720/rd1";
        type = "nfs";
        options = "defaults,user,proto=tcp,port=2049,noauto";
      }
      {
        description = "t720 RD2 0 0";
        what = "roseslant720:/export/rd2";
        where = "/mnt/rosest720/rd2";
        type = "nfs";
        options = "defaults,user,proto=tcp,port=2049,noauto";
      }
      {
        description = "t720 RD3 0 0";
        what = "roseslant720:/export/rd3";
        where = "/mnt/rosest720/rd3";
        type = "nfs";
        options = "defaults,user,proto=tcp,port=2049,noauto";
      }
      {
        description = "t720 RD4 0 0";
        what = "roseslant720:/export/rd4";
        where = "/mnt/rosest720/rd4";
        type = "nfs";
        options = "defaults,user,proto=tcp,port=2049,user=nfsuser,noauto";
      }
      {
        description = "Roses t330 Chrisdatalive 0 0";
        what = "rosesdmzt330:/mnt/chrisdatalive";
        where = "/mnt/rosest330/chrisdatalive";
        type = "nfs";
        options = "defaults,user,proto=tcp,port=2049,noauto";
      }
    ];
  };
}

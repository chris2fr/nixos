{
  pkgs,
  lib,
  vars,
  ...
}:
{
  fileSystems = {
    # "# UUID=E21A-D2D3                            /mnt/nvme2024//boot/efi      vfat    umask=0077 0 2"
    # Manjaro  Root 0 1
    "/mnt/nvme2024/root" = {
      # label = "Manjaro Root";
      device = "/dev/disk/by-uuid/0b46aa16-1916-45d3-8577-fdc0ad917bef";
      fsType = "ext4";
      options = [
        "defaults"
        "user"
        "noatime"
        "noauto"
      ];
    };
    # # Manjaro  Boot 0 2
    # "/mnt/nvme2024/boot" = {
    #   # label = "Manjaro Boot";
    #   device = "/dev/disk/by-uuid/e8cc7c02-9e62-430c-a680-5773effc1e7a";
    #   fsType = "ext4";
    #   options = [
    #     "defaults"
    #     "user"
    #     "noatime"
    #     "noauto"
    #   ];
    # };
    # "# /UUID=867b8d50-3d35-4775-9140-3fb6a8ebf793 swap           swap    defaults,noatime 0 0"
    # "# /dev/disk/by-label/WIND                   /mnt/wind      ntfs rw,nosuid,nodev,relatime,user_id=0,group_id=0,allow_other"
    #   0 2
    "/mnt/nvme2024/wind" = {
      # label = "Wind";
      device = "/dev/disk/by-uuid/70d74d2e-077f-4f94-8dff-1c4e127cc49b";
      fsType = "ntfs";
      options = [
        "defaults"
        "user"
        "noatime"
        "noauto"
      ];
    };
    # "# /mnt/wind                                /home/mannchri/wind none defaults,bind 0 0"
    # t720  RD1 0 0
    "/mnt/rosest720/rd1" = {
      # label = "roseslant720-rd1";
      device = "roseslant720:/export/rd1";
      fsType = "nfs";
      options = [
        "defaults"
        "user"
        "proto=tcp"
        "port=2049"
        "noauto"
      ];
    };
    # t720  RD2 0 0
    "/mnt/rosest720/rd2" = {
      # label = "roseslant720-rd2";
      device = "roseslant720:/export/rd2";
      fsType = "nfs";
      options = [
        "defaults"
        "user"
        "proto=tcp"
        "port=2049"
        "noauto"
      ];
    };
    # t720  RD3 0 0
    "/mnt/rosest720/rd3" = {
      # label = "roseslant720-rd3";
      device = "roseslant720:/export/rd3";
      fsType = "nfs";
      options = [
        "defaults"
        "user"
        "proto=tcp"
        "port=2049"
        "noauto"
      ];
    };
    # t720  RD4 0 0
    "/mnt/rosest720/rd4" = {
      # label = "roseslant720-rd4";
      device = "roseslant720:/export/rd4";
      fsType = "nfs";
      options = [
        "defaults"
        "user"
        "proto=tcp"
        "port=2049"
        "user=nfsuser"
        "noauto"
      ];
    };
    # Roses  t330 Chrisdatalive 0 0
    "/mnt/rosest330/chrisdatalive" = {
      # label = "rosesdmzt330-chrisdatalive";
      device = "rosesdmzt330:/mnt/chrisdatalive";
      fsType = "nfs";
      options = [
        "defaults"
        "user"
        "proto=tcp"
        "port=2049"
        "noauto"
      ];
    };
  };
}

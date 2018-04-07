#! /bin/bash

echo "Opening encrypted vaults..."
cryptsetup luksOpen /dev/disk/by-uuid/f3e2829d-df79-4982-bda2-c3c033020d7f vault1
cryptsetup luksOpen /dev/disk/by-uuid/e0372ce7-7454-460d-a44c-ec1f2815c60e vault2
cryptsetup luksOpen /dev/disk/by-uuid/489a3de3-72cb-4c37-b8a7-3ccdd6acd95f vault3
cryptsetup luksOpen /dev/disk/by-uuid/cba04c01-813c-4eff-8bfe-f0a552e890f8 vault4
cryptsetup luksOpen /dev/disk/by-uuid/aec19d51-0340-400b-9490-6986eba5de9b vault5
cryptsetup luksOpen /dev/disk/by-uuid/d00416d4-4c89-4bf0-b80e-bfe7c5da08a3 vault6
cryptsetup luksOpen /dev/disk/by-uuid/93bc9d71-0a40-4bab-875c-dde0f9f34599 vault7
cryptsetup luksOpen /dev/disk/by-uuid/a11f9d89-c3ea-43e6-97fc-cb5951494f2d vault8
cryptsetup luksOpen /dev/disk/by-uuid/eae387da-0f14-4aad-a72b-8b1d0c2902f5 vault9

echo "Importing ZFS mounts..."
zpool import tank

echo "Starting system services..."
systemctl start smbd
systemctl start minio
systemctl start apache2
systemctl start avahi-daemon
systemctl start netatalk

echo "Done!"

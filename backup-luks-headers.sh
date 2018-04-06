#! /bin/bash

cryptsetup luksHeaderBackup /dev/disk/by-uuid/f3e2829d-df79-4982-bda2-c3c033020d7f --header-backup-file /backup/luks_header_backup_vault1
cryptsetup luksHeaderBackup /dev/disk/by-uuid/e0372ce7-7454-460d-a44c-ec1f2815c60e --header-backup-file /backup/luks_header_backup_vault2
cryptsetup luksHeaderBackup /dev/disk/by-uuid/489a3de3-72cb-4c37-b8a7-3ccdd6acd95f --header-backup-file /backup/luks_header_backup_vault3
cryptsetup luksHeaderBackup /dev/disk/by-uuid/cba04c01-813c-4eff-8bfe-f0a552e890f8 --header-backup-file /backup/luks_header_backup_vault4
cryptsetup luksHeaderBackup /dev/disk/by-uuid/aec19d51-0340-400b-9490-6986eba5de9b --header-backup-file /backup/luks_header_backup_vault5
cryptsetup luksHeaderBackup /dev/disk/by-uuid/d00416d4-4c89-4bf0-b80e-bfe7c5da08a3 --header-backup-file /backup/luks_header_backup_vault6
cryptsetup luksHeaderBackup /dev/disk/by-uuid/93bc9d71-0a40-4bab-875c-dde0f9f34599 --header-backup-file /backup/luks_header_backup_vault7
cryptsetup luksHeaderBackup /dev/disk/by-uuid/a11f9d89-c3ea-43e6-97fc-cb5951494f2d --header-backup-file /backup/luks_header_backup_vault8
cryptsetup luksHeaderBackup /dev/disk/by-uuid/eae387da-0f14-4aad-a72b-8b1d0c2902f5 --header-backup-file /backup/luks_header_backup_vault9

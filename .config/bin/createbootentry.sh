#!/bin/sh
efibootmgr -c 	\
	--label "Gentoo Linux" \
	--disk /dev/sdj \
	--part 1 \
	--loader "/EFI/Boot/bootx64.efi" \
	-u "root=LABEL=btrfs-ssd rootflags=subvol=root intel_iommu=on initrd=/EFI/Boot/initramfs.img rd.driver.pre=vfio_pci resume=LABEL=swap ro"

#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="gazpacho"
iso_label="GAZPACHO_$(date +%Y%m)"
iso_publisher="isayni <https://github.com/isayni>"
iso_application="gazpacho"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12' -E ztailpacking)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/skel/.config/qtile/autostart.sh"]="0:0:755"
  ["/usr/local/share/shell-scripts/"]="0:0:755"
  ["/usr/local/share/dmenu-scripts/"]="0:0:755"
)

pkgname=grub-tools
pkgdesc="Fixes, additions and enhancements to grub and os-prober."
pkgver=1.6.7
pkgrel=1
arch=('any')
license=('GPL')
depends=(grub lsb-release)
optdepends=(os-prober-btrfs)

url=https://github.com/Raindeer-OS/$pkgname
_url="https://raw.githubusercontent.com/Raindeer-OS/$pkgname/main"

source=(
  $_url/grub-snaps.hook
  $_url/grub-install.hook
  $_url/grub-kernel.hook
  $_url/grub-microcode.hook
  $_url/grub-mkconfig.hook
  $_url/initrd-generation-fix
  $_url/initrd-generation-fix.hook
)
sha512sums=('skip')

package() {
  cd $srcdir

  install -d $pkgdir/usr/share/libalpm/hooks
  install -Dm644 grub-snaps.hook   $pkgdir/usr/share/libalpm/hooks/grub-snaps.hook
  install -Dm644 grub-install.hook   $pkgdir/usr/share/libalpm/hooks/grub-install.hook
  install -Dm644 grub-kernel.hook   $pkgdir/usr/share/libalpm/hooks/grub-kernel.hook
  install -Dm644 grub-microcode.hook   $pkgdir/usr/share/libalpm/hooks/grub-microcode.hook
  install -Dm644 grub-mkconfig.hook   $pkgdir/usr/share/libalpm/hooks/grub-mkconfig.hook
  install -Dm644 initrd-generation-fix.hook $pkgdir/usr/share/libalpm/hooks/initrd-generation-fix.hook

  install -d $pkgdir/usr/bin
  install -Dm755 initrd-generation-fix      $pkgdir/usr/bin/initrd-generation-fix
}

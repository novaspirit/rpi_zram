# Maintainer: Dct Mei <dctxmei@gmail.com>

_pkgname=rpi_zram
pkgname=rpi-zram
pkgver=1.0
pkgrel=1
pkgdesc="Script to dynamically enable ZRAM on a Raspberry Pi or other Linux system"
arch=('any')
url="https://github.com/leisureathome/rpi_zram"
makedepends=("git")
source=("git+$url.git"
        "$pkgname.service")
sha512sums=("SKIP"
            "c1ddb7031b33d0d732f401ba854591256fb2b3d483380522c39524fbdbb71e7387fa53b85b189268b54a6b7276298225af4112cf84b087293234157c484e3125")

package() {
    install -Dm755 $_pkgname/zram.sh $pkgdir/usr/bin/$pkgname
    install -Dm644 $_pkgname/$pkgname.service $pkgdir/usr/lib/systemd/system/$pkgname.service
}

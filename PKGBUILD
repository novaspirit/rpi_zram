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
            "b22695fc187af2efb00db6f61ec6a1ab66564838f942c2fe8d055a1722a096c53a67b18ee5a7fe49600ce028f9d6080b8b5b860a8c8f86657ec87317915b198b")

package() {
    install -Dm755 $_pkgname/zram.sh $pkgdir/usr/bin/$pkgname
    install -Dm644 $_pkgname/$pkgname.service $pkgdir/usr/lib/systemd/system/$pkgname.service
}

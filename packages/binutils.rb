require 'package'

class Binutils < Package
  version '2.26'
  source_url 'https://ftp.gnu.org/gnu/binutils/binutils-2.26.tar.gz'
  source_sha1 'bb933ec42eb2002d9270bd4c62a26c3706589ee9'

  depends_on 'buildessential'

  def self.build
    system "./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end

require 'package'

class Node_stable < Package
  version '5.9.1'
  source_url 'https://nodejs.org/dist/v5.9.1/node-v5.9.1.tar.xz'
  source_sha1 '6c4c0d164edccc4fc7cff862007478cb65c11848'

  depends_on 'buildessential'
  depends_on 'python27'

  def self.build
    system "CC='gcc' python2.7 ./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end

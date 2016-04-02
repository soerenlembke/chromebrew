require 'package'

class Node_stable < Package
  version '5.9.1'
  source_url 'https://nodejs.org/dist/v5.9.1/node-v5.9.1.tar.xz'
  source_sha1 'e8da38196c37c07ba922c569356988e01348f48344619b60dc0a1b99c941a3de'

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

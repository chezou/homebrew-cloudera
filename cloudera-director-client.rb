class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director/director/2/cloudera-director-client-2.7.1-director2.7.1.tar.gz"
  sha256 "81453c07fd9ab142932eb89b401d5b15ffb083884ede629252fa63bfd7b8e93a"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end

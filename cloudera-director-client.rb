class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director/director/2/cloudera-director-client-2.5.1-director2.5.1.tar.gz"
  sha256 "5b3df23d648271feb42f3fc8b404ecb18e361efe85f53d1b2a9351a802b49d56"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end

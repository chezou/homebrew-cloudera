class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director6/6.0.0/tars/cloudera-director-client-6.0.0.tar.gz"
  sha256 "8a679d1fbfbdfddc73ab0d8433cf9b37563353dc3a7c8c5ac2679a68e95f2a10"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end

class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director/director/2/cloudera-director-client-2.5.1-director2.5.1.tar.gz"
  sha256 "5B3DF23D648271FEB42F3FC8B404ECB18E361EFE85F53D1B2A9351A802B49D56"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end

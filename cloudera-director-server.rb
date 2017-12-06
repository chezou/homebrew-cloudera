class ClouderaDirectorServer < Formula
  desc "Cloudera Director Server which enbales you to deploy CDH cluster on cloud"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director/director/2/cloudera-director-server-2.6.1-director2.6.1.tar.gz"
  sha256 "fbb38d8e5b65d36f9e4896a4f88abb0ef525dc3166cf13b7203fae2848ec3b8c"

  depends_on "cloudera-director-client" => :recommended

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/start" => "cloudera-director-server-start"
    bin.install_symlink "#{libexec}/bin/stop" => "cloudera-director-server-stop"
    bin.install_symlink "#{libexec}/bin/cloudera-director-server" => "cloudera-director-server"
  end

  def caveats
    msg = <<-EOF.undent
  You can start cloudera director server with cloudera-director-server-start command. If you want to stop it, use cloudera-director-server-stop.
  EOF
  end

  test do
    #system "false"
  end
end

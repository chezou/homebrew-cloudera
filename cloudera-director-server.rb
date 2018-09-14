class ClouderaDirectorServer < Formula
  desc "Cloudera Director Server which enbales you to deploy CDH cluster on cloud"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director6/6.0.0/tars/cloudera-director-server-6.0.0.tar.gz"
  sha256 "ec993645313cc4fc9f9f1b4d1e926b84595d6f02866100d4c5e225976184aa4e"

  depends_on "cloudera-director-client" => :recommended

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/start" => "cloudera-director-server-start"
    bin.install_symlink "#{libexec}/bin/stop" => "cloudera-director-server-stop"
    bin.install_symlink "#{libexec}/bin/cloudera-director-server" => "cloudera-director-server"
  end

  def caveats
    msg = <<~EOF
  You can start cloudera director server with cloudera-director-server-start command. If you want to stop it, use cloudera-director-server-stop.
  EOF
  end

  test do
    #system "false"
  end
end

class Emon < Formula
  desc "Universal serial monitor for embedded devices"
  homepage "https://github.com/EspilonOrg/emon"
  url "https://github.com/EspilonOrg/emon/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f1ae820b4ecd3122e82c497ea3ba1852a2f336b79ffaa545d6912a435fcf96a9"
  license "Apache-2.0"
  version "0.1.1"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/emon --version")
  end
end

class Emon < Formula
  desc "Universal serial monitor for embedded devices"
  homepage "https://github.com/EspilonOrg/emon"
  url "https://github.com/EspilonOrg/emon/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b5abea543f7970eb662228cd13fa533b6db9cfcef43348ff89424446f4253bcc"
  license "Apache-2.0"
  version "0.1.0"

  def install
    system "make"
    bin.install "espilon-monitor" => "emon"
    man1.install "docs/emon.1"
    (share/"emon/patterns").install Dir["patterns/*"]
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/emon --version")
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghlabels < Formula
  desc "Simple CLI tool to help manage labels across repos"
  homepage "https://clokwork.net/ghlabels/"
  version "1.1.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clok/ghlabels/releases/download/v1.1.0/ghlabels_1.1.0_darwin_amd64.tar.gz"
    sha256 "f1e0409591af8c86d723ce09d21738d33eb6f71a57c566c29a234ba0a3b511a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clok/ghlabels/releases/download/v1.1.0/ghlabels_1.1.0_darwin_arm64.tar.gz"
    sha256 "0c497f484dd4f1f6584855d37ed54eeb4923a70cc4ad1a3f5c7db4119e80c7f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clok/ghlabels/releases/download/v1.1.0/ghlabels_1.1.0_linux_amd64.tar.gz"
    sha256 "155b8ee4490343a9e20d5d9026305bd639201f57b113b790ac417349f032c4a4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/clok/ghlabels/releases/download/v1.1.0/ghlabels_1.1.0_linux_armv6.tar.gz"
    sha256 "2c7811e1926c8cbed02c2f193ec4cce078350994438d50fbe4f2926cc2ad2de7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/clok/ghlabels/releases/download/v1.1.0/ghlabels_1.1.0_linux_arm64.tar.gz"
    sha256 "405eead95db8b3d29f0e5dc1671ce8cefbfbb337b455a7ee6e462b7374fb21d8"
  end

  def install
    bin.install "ghlabels"
  end

  test do
    system "#{bin}/ghlabels --help"
  end
end

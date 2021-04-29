# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghlabels < Formula
  desc "Simple CLI tool to help manage labels across repos"
  homepage "https://clokwork.net/ghlabels/"
  version "0.1.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clok/ghlabels/releases/download/v0.1.1/ghlabels_0.1.1_darwin_amd64.tar.gz"
    sha256 "8b6b0ae968bcbd4047065a9a5435beebe70eba5312eb5e18f551cd85e975e3e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clok/ghlabels/releases/download/v0.1.1/ghlabels_0.1.1_darwin_arm64.tar.gz"
    sha256 "90298ed9164e201847e1ed108e4c09b2399552341850d82b847d27837845da61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clok/ghlabels/releases/download/v0.1.1/ghlabels_0.1.1_linux_amd64.tar.gz"
    sha256 "36f9602ec1c15e892748e82d4327ae20602a3239fa5179962fcffa2fd85a9e5c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/clok/ghlabels/releases/download/v0.1.1/ghlabels_0.1.1_linux_armv6.tar.gz"
    sha256 "621c9568d28defdc0995463f0271c20e07e8d5ecb109fb7e454f4bfb93979a14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/clok/ghlabels/releases/download/v0.1.1/ghlabels_0.1.1_linux_arm64.tar.gz"
    sha256 "c5b12f2ac418c8be97bb59e7db17557805daa3a7de753bf7080395531254646b"
  end

  def install
    bin.install "ghlabels"
  end

  test do
    system "#{bin}/ghlabels --help"
  end
end
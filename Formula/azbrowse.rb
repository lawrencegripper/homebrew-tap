# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "1.1.375"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.375/azbrowse_darwin_amd64.tar.gz"
    sha256 "050c7fc69922b5b5db0c5248100ebec654e6276d298a74c97da97054a0b456f4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.375/azbrowse_linux_amd64.tar.gz"
      sha256 "eeba1a66fd0f62cc57cfcb1e74660b47cf2c9ec5ef310f8a6672a3944e18358e"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

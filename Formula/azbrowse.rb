# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "1.1.467"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.467/azbrowse_darwin_amd64.tar.gz"
    sha256 "6c741750e567cd2f9c191529d86d7f276d72d0f013b429861a87cce3195fbe58"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.467/azbrowse_linux_amd64.tar.gz"
      sha256 "b78f8734d13d15bf55c2e8420d0d99a31599343077c7dfef71e4ccf6a04245f1"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

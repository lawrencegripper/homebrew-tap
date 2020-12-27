# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.446828764"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.446828764/azbrowse_darwin_amd64.tar.gz"
    sha256 "ca197a239779c1caf6337431a24be805c1a1c9c6bb7fdab1b1845378166674be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.446828764/azbrowse_linux_amd64.tar.gz"
    sha256 "aeacb89fc77cedfba908b83d65d4019368ceb3b177e5c796d0329ec4332e326e"
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

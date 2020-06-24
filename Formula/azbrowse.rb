# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.146299380"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.146299380/azbrowse_darwin_amd64.tar.gz"
    sha256 "fe0b7d1a83c9511f509bd9f5a4321457166ce1f50626c7572be9b9492bd8d4d0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.146299380/azbrowse_linux_amd64.tar.gz"
      sha256 "3c97b11d515fa637cd3b6c57fddbf76ba72e14936b17cb75c0122ec2022d134b"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

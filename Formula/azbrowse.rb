# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.235651258"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.235651258/azbrowse_darwin_amd64.tar.gz"
    sha256 "dfe668e07107598c15bf9a00e5f156d2bb298688a52d1edf73a2cd4804c613b8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.235651258/azbrowse_linux_amd64.tar.gz"
      sha256 "9781142b92b7247a3258198488730152cb6e3a69dc8c94eb32b2183b9cc210d0"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

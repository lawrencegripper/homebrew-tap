# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "1.1.246"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.246/azbrowse_darwin_amd64.tar.gz"
    sha256 "a10ec1faddc8cac8344b7c80724d982fd943721d2dbdf089529b7c69536fdf5d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.246/azbrowse_linux_amd64.tar.gz"
      sha256 "03677a4525697cd9819bf42fb1e580154252b873f78897f0bc0db4294b4baab7"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

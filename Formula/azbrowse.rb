# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.235649985"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.235649985/azbrowse_darwin_amd64.tar.gz"
    sha256 "1c2d3925ffa2bc6e5e47ada77092ab99d097b063a6a86f92ba9220ca3b5e41f9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.235649985/azbrowse_linux_amd64.tar.gz"
      sha256 "0d8fb5b0f7c2c2ddfe13f05f448a87e2c8849020b0b52c41fcfe6c56b1b1f160"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.185/azbrowse_darwin_amd64.tar.gz"
  version "1.1.185"
  sha256 "e9d8efa85f54c6c64a5d686ef0ad7f807087522f8ece3e6ce3dbf648dbba200e"

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

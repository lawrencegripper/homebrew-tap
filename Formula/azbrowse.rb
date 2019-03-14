# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.97/azbrowse_darwin_amd64.tar.gz"
  version "1.1.97"
  sha256 "720b26809294b7a9fd43b6767866814e86420c6e58a594f7af4b1dd9071e19a4"

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

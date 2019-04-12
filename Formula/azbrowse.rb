# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.170/azbrowse_darwin_amd64.tar.gz"
  version "1.1.170"
  sha256 "e779150b16859d338b53ac69b907a7998ff45b3c97f8feec3e1ba5cbae6e6698"

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

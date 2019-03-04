# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  url "https://github.com/lawrencegripper/azbrowse/releases/download/v1.1.66/azbrowse_darwin_amd64.tar.gz"
  version "1.1.66"
  sha256 "0f6f73fd9ce599affeb6346cfda68ce98a95b2b2f3fbbdbe61995a6e39c0bc33"

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.147168511"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.147168511/azbrowse_darwin_amd64.tar.gz"
    sha256 "51eced186c579f07ab7a62937cd825a8b5a415fe9c4a7bf8a6fa719feffbb22f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.147168511/azbrowse_linux_amd64.tar.gz"
      sha256 "cfd0fe66a49c335222db7261d08b1f9cce7d09521607d98c819f7f62be139be5"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

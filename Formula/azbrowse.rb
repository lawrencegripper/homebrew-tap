# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.0.646551324"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.646551324/azbrowse_darwin_amd64.tar.gz"
    sha256 "6c5b605b51a3f61c96025acba0f62bcc1090dec96b473f3a018de9cf92d8eae1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.0.646551324/azbrowse_linux_amd64.tar.gz"
    sha256 "1c56771f997c838035ba7903e1c774c6583884736d0ff1cdfcaed042ad4abe29"
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

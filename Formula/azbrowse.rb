# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.487"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.487/azbrowse_darwin_amd64.tar.gz"
      sha256 "134e3966a1239cd2c68d9d95769d9d56caa0fec97cf3f4a334e2cb58dbeb6f9c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.487/azbrowse_linux_amd64.tar.gz"
      sha256 "50ada50c259bb2853eea08b28c5cd26dddf9a11af65fce37822bfda91c2aa1b3"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

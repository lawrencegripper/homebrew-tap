# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.514"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.514/azbrowse_darwin_amd64.tar.gz"
      sha256 "4ba3e2a91c2c9d60f9c4c88f28f2f175015c4b6b6c23182c2f21f50b056c3169"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.514/azbrowse_linux_amd64.tar.gz"
      sha256 "269b2efebff426965a37b0008674c0fa27975010599f5f9914867c02b041ff49"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

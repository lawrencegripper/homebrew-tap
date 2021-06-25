# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.481"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.481/azbrowse_darwin_amd64.tar.gz"
      sha256 "7877b1874cd0f6055594a758ed52fb854382a7327d2cb9799a036cb53a5d41f2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.481/azbrowse_linux_amd64.tar.gz"
      sha256 "e124aa61b8d5e8ea06c641a6afc4d96ffad7071b2e06cfc60bb8b348cb531ab8"
    end
  end

  def install
    bin.install "azbrowse"
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

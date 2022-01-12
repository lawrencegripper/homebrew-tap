# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.551"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.551/azbrowse_darwin_amd64.tar.gz"
      sha256 "dd0604329aac6d0593263a41639a399f896ca2ef4dd13b60efdfcbeab11ba505"

      def install
        bin.install "azbrowse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.551/azbrowse_linux_amd64.tar.gz"
      sha256 "c05fdcb4db70b408806aeaab882259d5c0d6de305582d54e345465675924f34a"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

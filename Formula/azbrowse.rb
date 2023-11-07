# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.911"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.911/azbrowse_darwin_amd64.tar.gz"
    sha256 "3c34c5bc68e6e67baa410590d537119108b6c10f6248f6ad1bba5dac512e8e8f"

    def install
      bin.install "azbrowse"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Azbrowse
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.911/azbrowse_linux_amd64.tar.gz"
      sha256 "a87b5aa1cbb62eca871376661011fee6390d3a3d2f6f675a84aac095a541d2ae"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

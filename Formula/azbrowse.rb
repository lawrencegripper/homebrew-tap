# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.601"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.601/azbrowse_darwin_amd64.tar.gz"
    sha256 "28f62f9ef2f6cd0c7d1ba808e6800ddffa4fd64b3b2e6d3f2c305215545a2b9c"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.601/azbrowse_linux_amd64.tar.gz"
      sha256 "1371a599b99772f38a85c326bc205a4a8e4d6aaaef097875cfd40bfcac50a0d9"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

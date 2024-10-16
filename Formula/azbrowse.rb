# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1062"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1062/azbrowse_darwin_amd64.tar.gz"
    sha256 "1ef82466c3b43586665212777e5052cda3efaf5746b2542c1c652bed6455f333"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1062/azbrowse_linux_amd64.tar.gz"
      sha256 "d3046f7a2feda59f159a7cc188236a137d9519d215e11411a78f176528514be5"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

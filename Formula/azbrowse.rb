# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1046"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1046/azbrowse_darwin_amd64.tar.gz"
    sha256 "611eef9ef34a1f68db7bfcb1521d9f472455d854cd3d482f451a3f2a39652177"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1046/azbrowse_linux_amd64.tar.gz"
      sha256 "678406a1d8798e53749f4e22f9581b4751dfd911bf75963e407f73c4a695b210"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

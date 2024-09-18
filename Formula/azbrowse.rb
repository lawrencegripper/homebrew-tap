# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1050"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1050/azbrowse_darwin_amd64.tar.gz"
    sha256 "d2a8a7f0f0f3f011beeb3ac35a39fed5d4a733982657667e009a4981c010f504"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1050/azbrowse_linux_amd64.tar.gz"
      sha256 "d72df9ac7694928e80c858cf6f0a45755b7489631f7d53ea4bca75436a53c5b1"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

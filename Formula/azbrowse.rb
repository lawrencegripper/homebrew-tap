# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1108"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1108/azbrowse_darwin_amd64.tar.gz"
    sha256 "8d63451805e3572b467137594d56996776a7262799026729ee94e16d8fd96709"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1108/azbrowse_linux_amd64.tar.gz"
      sha256 "4b1d03b0e5761484e4611c1eb4f44fd3845bb1d94cddaa8f7dcae882500d5531"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

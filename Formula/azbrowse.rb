# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.947"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.947/azbrowse_darwin_amd64.tar.gz"
    sha256 "5bf63dd27a55eb6df050604f2a357be2a898e1cb1eb99855347fc0d004733df3"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.947/azbrowse_linux_amd64.tar.gz"
      sha256 "d98f5c5b091a00f298e7963a1fa052f9ea82584f0cfc4135d89cc83343e78fc2"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

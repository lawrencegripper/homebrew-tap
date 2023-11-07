# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.913"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.913/azbrowse_darwin_amd64.tar.gz"
    sha256 "fbfaf4c44300d47ec045ee740c5e45ae9ca96c19d4ec7db185f340cb53834731"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.913/azbrowse_linux_amd64.tar.gz"
      sha256 "e05fc47c1d9235bb6bb2c78b3a8f06f30b065248d9ec6278934845165cc4e3c6"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

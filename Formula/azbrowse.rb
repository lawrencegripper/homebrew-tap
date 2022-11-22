# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.630"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.630/azbrowse_darwin_amd64.tar.gz"
    sha256 "cb03983184cd925fcae046491c26eda1b595769774244f7edae60751faa98486"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.630/azbrowse_linux_amd64.tar.gz"
      sha256 "b7f454e2e6681900367461c9829888388b829ec33f969f840c6613d20528602c"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

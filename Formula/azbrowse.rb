# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.590"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.590/azbrowse_darwin_amd64.tar.gz"
    sha256 "6c3b1e9c6c51efacf904a1bfc71302c483af62f15a2a2375bc706687fde021f4"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.590/azbrowse_linux_amd64.tar.gz"
      sha256 "74f1e664d32dd402596bc47c24fd4918a37efa8efd178e376ee6adbd316e3777"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

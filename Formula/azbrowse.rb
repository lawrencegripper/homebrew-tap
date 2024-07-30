# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1012"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1012/azbrowse_darwin_amd64.tar.gz"
    sha256 "59fe54f932194068eb27f4d1e6530ec91b5a02aa8487b2c00efb9afdaa7369a2"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1012/azbrowse_linux_amd64.tar.gz"
      sha256 "5f9aae0e6058bfd41db07fd8bc3f826a133d339babb7e855e5efdd6d75f3c193"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

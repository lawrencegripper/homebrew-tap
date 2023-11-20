# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.921"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.921/azbrowse_darwin_amd64.tar.gz"
    sha256 "cab8bd00b30fcf3a74143bac0e46544cf8c3d01a331fc6dba418e28c55a0a184"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.921/azbrowse_linux_amd64.tar.gz"
      sha256 "16919b0dcb575e313c78ae58cc5c314b182b56677dea1c19f8181b4987e27cf2"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

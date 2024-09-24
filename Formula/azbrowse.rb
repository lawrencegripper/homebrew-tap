# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1052"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1052/azbrowse_darwin_amd64.tar.gz"
    sha256 "f416417b1af293616f16628797658d76d4525d5f6e6b1a088e48d1e3d8c9a085"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1052/azbrowse_linux_amd64.tar.gz"
      sha256 "0a157b26f1a9654cd676f42f1dd58840cc226172baa8b1abccbe3d81547e63da"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

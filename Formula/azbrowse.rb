# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azbrowse < Formula
  desc "An interactive CLI for browsing Azure, inspired by http://resources.azure.com/"
  homepage "https://github.com/lawrencegripper/azbrowse"
  version "2.1.1060"

  on_macos do
    url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1060/azbrowse_darwin_amd64.tar.gz"
    sha256 "781cddb297b060cd9c6de11f1e7082dcc44f697b6d756638f1e0261179355132"

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
      url "https://github.com/lawrencegripper/azbrowse/releases/download/v2.1.1060/azbrowse_linux_amd64.tar.gz"
      sha256 "2e23f66cb874e4e1e77ac8ccde1b1c894347b5e8559a519c32d7b8bc7da84ca6"

      def install
        bin.install "azbrowse"
      end
    end
  end

  test do
    system "#{bin}/azbrowse --version"
  end
end

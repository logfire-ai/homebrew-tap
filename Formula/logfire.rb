# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "0.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v0.2/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f26cf97dfcbc510c9bbf8e02073e78e995e5f794f5894c950c55ea3d1cc1b10e"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v0.2/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "04ef18674784dfe020502eda9a907e95433602f5c932e322edbd54042884937c"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end

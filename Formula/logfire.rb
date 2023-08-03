# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "1.7"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v1.7/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "60152f57ec6505d0e821682ccf5727811519407c9e79c79675f69203d57e4129"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v1.7/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "115e944cde61418fa897895a5c5d074b0183b31c0cd77ca706b6ae33e5f5c2e3"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end

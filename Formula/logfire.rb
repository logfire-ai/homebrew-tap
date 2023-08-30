# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "3.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v3.0/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee97729aef296fd197950ea04179e7dad41cb1f432e95d27d18b3a2f4dc68ef4"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v3.0/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fb656614a984f4563a1237f4f84d46bd0361640a6c7dbee1e11fb0c4c4bc0fd4"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end

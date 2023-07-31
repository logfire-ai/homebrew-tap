# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-sh/cli"
  version "1.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/logfire-sh/cli/releases/download/v1.3/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9aaae7414f57a021e2c540291816dfb7e32250f59e55ffcf995163a12580c4bb"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/logfire-sh/cli/releases/download/v1.3/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "664fd3b4fc5988f1085e5f7447139d7a8e6c554b822203ba519083435cee0445"

      def install
        bin.install "logfire"
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end

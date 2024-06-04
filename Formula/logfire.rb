# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfire < Formula
  desc "Logfire command line interface"
  homepage "https://github.com/logfire-ai/cli"
  version "1.0.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/logfire-ai/cli/releases/download/v1.0.6/logfire_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f5e17fe45b40e318f7a2c8078a0e26cb06b7ee16e9546ab425983335ba81cc34"

      def install
        bin.install "logfire"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/logfire-ai/cli/releases/download/v1.0.6/logfire_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d4995b7be15872de8e23cc4e6737f6d40aedef7536d8677840a9760087849a2b"

        def install
          bin.install "logfire"
        end
      end
    end
  end

  test do
    system "#{bin/logfire}"
  end
end

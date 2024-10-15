# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.113"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.113/cli_1.0.113_darwin_amd64.tar.gz"
      sha256 "296d5d05d5ae86f45fcb8c88e871eddd32ee1b5b7d99eb9632a24b35386cd0ab"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.113/cli_1.0.113_darwin_arm64.tar.gz"
      sha256 "d8e7219137fc59b439ac8528464636193a0ea2d38c119ee681cfc1b10fdf654e"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.113/cli_1.0.113_linux_amd64.tar.gz"
        sha256 "97cca690600619fda21a90c7036018abf28897040db2ee87e09434ecb575c8f3"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.113/cli_1.0.113_linux_arm64.tar.gz"
        sha256 "cd173a6efc6e1317a2ca55a4db3b256649a603f2d21d8c99f01399c56e9554ce"

        def install
          bin.install "odigos"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing Odigos CLI! Please run `odigos install` to install Odigos in your Kubernetes cluster.
    EOS
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.0/cli_1.0.0_darwin_arm64.tar.gz"
      sha256 "4ce92edf76acbfd5a46f3347ed4e1a98e5ccf328e63b61fed9e399c6d908071e"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.0/cli_1.0.0_darwin_amd64.tar.gz"
      sha256 "1d367085319e7d1efb362f09053594130954fb1af2a714d57cea4ad0cc800787"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.0/cli_1.0.0_linux_arm64.tar.gz"
      sha256 "5ec8152e06c1308cef3c4da1cf935a6667e5bc6519c18b3607fab0f4e99991fb"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.0/cli_1.0.0_linux_amd64.tar.gz"
      sha256 "5b9a550210799619cb7647cd1fdd470cdffb379e8c7aa5ca924e9a608e179ef1"

      def install
        bin.install "odigos"
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing Odigos CLI! Please run `odigos install` to install Odigos in your Kubernetes cluster.
    EOS
  end
end

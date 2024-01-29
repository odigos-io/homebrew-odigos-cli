# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.25/cli_1.0.25_darwin_amd64.tar.gz"
      sha256 "12c113227e7f6f747a88155fa767f61e5c53d055cfff2683d264bd77607b34d8"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.25/cli_1.0.25_darwin_arm64.tar.gz"
      sha256 "1ed24277ebba2ebb7f331de0cdd4644ae15567cea5164891c1f9781e8e197bd6"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.25/cli_1.0.25_linux_arm64.tar.gz"
      sha256 "4cf579408bcbb7e65cf51c56d0d4aa0386ade18271df3ebe5073a154648225e8"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.25/cli_1.0.25_linux_amd64.tar.gz"
      sha256 "5a56fee8b7324666d7f9f723efdb740f7af10f79ff198e3de41d8ce227365ea2"

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

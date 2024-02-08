# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.31/cli_1.0.31_darwin_arm64.tar.gz"
      sha256 "e68d6f0b9bd4c85e56351ba4ee0420c9e8be62069631a7df56a49fd8a6fc2a95"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.31/cli_1.0.31_darwin_amd64.tar.gz"
      sha256 "09263faaed005fab7bd3bd873efa64a8cae55660b5e03d825918d567326909f1"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.31/cli_1.0.31_linux_arm64.tar.gz"
      sha256 "ef3f3243c744c459de8b69da69c6278f8f608df3579679cf93e3c821a202432a"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v1.0.31/cli_1.0.31_linux_amd64.tar.gz"
      sha256 "c4ce8b9d3fa0f8dc4204654c9a2129eefda4f6e8cef9e64f5fc1eeca8d674f1a"

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

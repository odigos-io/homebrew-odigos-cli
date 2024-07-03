# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.75"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.75/cli_1.0.75_darwin_amd64.tar.gz"
      sha256 "c3820fd6c992dd8c2303fea7227d8a91d7b3b22d0e9ff58ab54b7bbe996de6a2"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.75/cli_1.0.75_darwin_arm64.tar.gz"
      sha256 "e0991e0b6562be6c7c7832991b54ae36c6dfd46280bb0d62b1ac577e5021e992"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.75/cli_1.0.75_linux_amd64.tar.gz"
        sha256 "f34b18483ef70843983d82ee12e32ae4ef8cec8ef74a0a4d45b72ce09ed5c831"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.75/cli_1.0.75_linux_arm64.tar.gz"
        sha256 "b33444fedc5ea7e1acff0375bf47deb4f085284cc04a0d81eb6a4a2e58c9bcd6"

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

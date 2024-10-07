# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.111"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.111/cli_1.0.111_darwin_amd64.tar.gz"
      sha256 "2aa724ed9eff88d06dd7e88c3ec8c6fd5a1c58b0e0328ec53e0939d0c28acba5"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.111/cli_1.0.111_darwin_arm64.tar.gz"
      sha256 "b12838be5ebc0330283679f5d887a7f3f0107ab7f6fecc2f3ed8619c4ceef0f9"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.111/cli_1.0.111_linux_amd64.tar.gz"
        sha256 "e28d56339f74df7b0c85b4edefe371d28520c086024b7e2966ccf227c1c08458"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.111/cli_1.0.111_linux_arm64.tar.gz"
        sha256 "ec07f86a00715423d1434a6c63dd44a1b4aeaed9fcc1ba8579d9aae3e72f5579"

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

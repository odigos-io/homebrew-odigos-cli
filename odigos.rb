# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.104"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.104/cli_1.0.104_darwin_amd64.tar.gz"
      sha256 "5f2dd8830a4f9a3044b1d80a84656c4dd7f956adec13b66b1e6bc6d0122ca1eb"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.104/cli_1.0.104_darwin_arm64.tar.gz"
      sha256 "401965c69c2424942cb90f6e904d291e5234eb9ce0477cece1a5e5d371922fd0"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.104/cli_1.0.104_linux_amd64.tar.gz"
        sha256 "b14e5fb6913a308639e32eaa1ba08ace33ebe44c06d171397b722d12540d3218"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.104/cli_1.0.104_linux_arm64.tar.gz"
        sha256 "ad6ce4f9c3ff4a433aec35fe733fb8018a14a3fe2682db7d0107d58482eb5783"

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

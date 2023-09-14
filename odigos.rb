# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.7/cli_0.1.7_darwin_amd64.tar.gz"
      sha256 "5e6fc8d5ceb6f7f0afa96fe9a576c99d9202644927f9f408559df4091d2994bf"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.7/cli_0.1.7_darwin_arm64.tar.gz"
      sha256 "060c7af6f3f2d73f6e98889b4a35cef7bc0e006055fb705f205c47452db69830"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.7/cli_0.1.7_linux_amd64.tar.gz"
      sha256 "a1a4369ed80e727bf2833c6775e31717cbc0188ae70e13615a9789125213ec53"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keyval-dev/odigos/releases/download/v0.1.7/cli_0.1.7_linux_arm64.tar.gz"
      sha256 "4eba50b1e898435699b3a6bfb59ead55bb7ce5583c528768ca97ea2fcda4a1e2"

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

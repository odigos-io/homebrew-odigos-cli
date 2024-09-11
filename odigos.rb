# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.99"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.99/cli_1.0.99_darwin_amd64.tar.gz"
      sha256 "b002310f1f325fc478dd309f49fa96696f9fc056e26c3e94a54b7f6b68da2e96"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.99/cli_1.0.99_darwin_arm64.tar.gz"
      sha256 "d8e14bb687984ccffb97a8c4bd56ab1b7de78de5bc129036a27f874f7c34c92d"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.99/cli_1.0.99_linux_amd64.tar.gz"
        sha256 "3b1db1359c697de90d2c80510ea6c8677819d3757446dccf341264e9622a635e"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.99/cli_1.0.99_linux_arm64.tar.gz"
        sha256 "acf18b12139894c1e4687ed049f7171a96132cc0734aa02fd2af38a9e2792888"

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

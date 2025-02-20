# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.156"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.156/cli_1.0.156_darwin_amd64.tar.gz"
      sha256 "d9f75a9952813999806395caba403e4e84fe43d16c043333c15aa17ee5970df4"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.156/cli_1.0.156_darwin_arm64.tar.gz"
      sha256 "14b58e62b3ffac98a3dd0d441a5ee3c2720d400b912742fd9d5cb32f2f5ff044"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.156/cli_1.0.156_linux_amd64.tar.gz"
        sha256 "cdab00f33c83da781bca1269a920f310b4618afc7c6a8c85cacfdcd4145cb083"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.156/cli_1.0.156_linux_arm64.tar.gz"
        sha256 "38dbc790c2c154442cbd7ee16d335151979fd53d38ad35aba11131f5af4aa7fc"

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

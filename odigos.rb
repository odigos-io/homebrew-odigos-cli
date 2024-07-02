# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.74"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.74/cli_1.0.74_darwin_amd64.tar.gz"
      sha256 "63e26f319c932e8b2f475a6610d71c003bb93ef8a0f4e7d0e6c23a6b088245ac"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.74/cli_1.0.74_darwin_arm64.tar.gz"
      sha256 "15c9720fbde04621731e1549f4d6390f75bc7bd3470cda1ca7aa94d64d38dcef"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.74/cli_1.0.74_linux_amd64.tar.gz"
        sha256 "c05e5a39f1cfd2c3b90c9eba4a94681d24aa8402549c72882c96c8ef7543f18f"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.74/cli_1.0.74_linux_arm64.tar.gz"
        sha256 "4053c4d0a66d912f13fe144b9b63386a3cc263517eebce4ae80e9ddc33f3612f"

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

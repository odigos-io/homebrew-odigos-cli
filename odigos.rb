# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.95"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.95/cli_1.0.95_darwin_amd64.tar.gz"
      sha256 "42869af38fdf291e5a831869f71eb2ad214508d5ab14a98345fd2dc0f97dc4c1"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.95/cli_1.0.95_darwin_arm64.tar.gz"
      sha256 "bd0029942921e4094bfa3ab555a268b5db6b25b0466a9a532957fa9f23d3a4f9"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.95/cli_1.0.95_linux_amd64.tar.gz"
        sha256 "dfb68d01579656255e505f41aa9c8f6bf208cc29f289575bee2260d62cb1c75e"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.95/cli_1.0.95_linux_arm64.tar.gz"
        sha256 "e34bf3d45032c44a585216b0d9eeca354bf4984cc883564eb25d3ae721c5fcb1"

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

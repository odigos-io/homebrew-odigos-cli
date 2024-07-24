# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.84"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.84/cli_1.0.84_darwin_amd64.tar.gz"
      sha256 "16d8a596c35809097b5ddb8ce1b26863808523e10d400ee44a1b561a706b758c"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.84/cli_1.0.84_darwin_arm64.tar.gz"
      sha256 "bf16ac775ae9e5fc06bde74a39c1842835bb2b0a8db6ae77471e3a2a0886f9d4"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.84/cli_1.0.84_linux_amd64.tar.gz"
        sha256 "79ad258d80055ecae3944549bfdea175065845ef716677d5b726405dd84a8174"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.84/cli_1.0.84_linux_arm64.tar.gz"
        sha256 "2ee1b179f2775d74d7cc0255ccc48965b1ac3d209dc9e58d930f652b3709a921"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.185"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.185/cli_1.0.185_darwin_amd64.tar.gz"
      sha256 "a4227599f65bd99fd97dc7b3aec05928c6c4191ad00789e41de29e40f006b288"

      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.185/cli_1.0.185_darwin_arm64.tar.gz"
      sha256 "9791e967734171179941708483352b7aa7ae1ccc23df1b59c6b0fff186f662ab"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.185/cli_1.0.185_linux_amd64.tar.gz"
      sha256 "43d861ff27cc60cccf102750650a236e30557a0c92436d48d6862ad64738300a"
      def install
        bin.install "odigos"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.185/cli_1.0.185_linux_arm64.tar.gz"
      sha256 "20e9241f04a0508a6c0f09a161db57fa632cec429e704ff95de9149c0f77422d"
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

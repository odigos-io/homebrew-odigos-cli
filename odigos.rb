# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.146"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.146/cli_1.0.146_darwin_amd64.tar.gz"
      sha256 "ab4dc1d77baf1c849eea98e89d91d8c779bc5e59dff901349dcd8db4dd580e63"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.146/cli_1.0.146_darwin_arm64.tar.gz"
      sha256 "5d9e722d64e23f509f94698d8244524940ff7e3355e337f7b15aabc360cbdb3f"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.146/cli_1.0.146_linux_amd64.tar.gz"
        sha256 "f91b2bbd06f581f2b4d3a958fb0541f5b4decd26b909c5ea52c3ce86fabdfab2"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.146/cli_1.0.146_linux_arm64.tar.gz"
        sha256 "4f04dd471bc5018c7837d9ea0c59c77779f256065a185b05e47c369a8cfd4912"

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

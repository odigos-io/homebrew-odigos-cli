# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Odigos < Formula
  desc "Odigos CLI Utility"
  homepage "https://odigos.io"
  version "1.0.140"

  on_macos do
    on_intel do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.140/cli_1.0.140_darwin_amd64.tar.gz"
      sha256 "d98ab95ffcfc236c58c3781ff1e4f9209fc3af0b82f7273e8bd9b8c8beb960e2"

      def install
        bin.install "odigos"
      end
    end
    on_arm do
      url "https://github.com/odigos-io/odigos/releases/download/v1.0.140/cli_1.0.140_darwin_arm64.tar.gz"
      sha256 "f0968aefd5adc1e1db721835c25e826890741ac2d9c7d1b06de04375b08a69e8"

      def install
        bin.install "odigos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.140/cli_1.0.140_linux_amd64.tar.gz"
        sha256 "8514c60bf1ab95bb38729722d1e9284bcff699aceadaa79b7d139592c1977b34"

        def install
          bin.install "odigos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/odigos-io/odigos/releases/download/v1.0.140/cli_1.0.140_linux_arm64.tar.gz"
        sha256 "5afd0c81c7983047b5f9d8d9226741f45b10c199e6dbaee10c682e8fe3aff70f"

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

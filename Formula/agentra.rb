# typed: false
# frozen_string_literal: true

class Agentra < Formula
  desc "Agentra CLI — local agent runtime and management tool"
  homepage "https://github.com/agentra-ai/agentra"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.2/agentra_darwin_amd64.tar.gz"
      sha256 "05046d28e51019ee84c5806d46c7538e50e3629ad9a5da95f34d041857bca637"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.2/agentra_darwin_arm64.tar.gz"
      sha256 "e18d289379f8723c4c304e9db54f00489f24f5e1e8b9b17f800147050b39ba11"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.2/agentra_linux_amd64.tar.gz"
      sha256 "9bb0e4debbf6a036effffde297226a9b76b9e8bc5b3611f7176c902234459b98"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.2/agentra_linux_arm64.tar.gz"
      sha256 "9f8576b1df6965dde7816838cb415596f153befdc4ca66a21ea4f1cfeb9ca73d"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  test do
    system "#{bin}/agentra", "version"
  end
end

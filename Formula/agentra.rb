# typed: false
# frozen_string_literal: true

class Agentra < Formula
  desc "Agentra CLI — local agent runtime and management tool"
  homepage "https://github.com/agentra-ai/agentra"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.1/agentra_darwin_amd64.tar.gz"
      sha256 "bf259acb9009894fe5bf09af5f13b7c74c0966c592970d3b38c53e4cf1ebe7a6"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.1/agentra_darwin_arm64.tar.gz"
      sha256 "539a781e905df661fe84eebb6c5c9c3a51d75ca365ab35f0dc45f11bf5df0d9f"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.1/agentra_linux_amd64.tar.gz"
      sha256 "cafbed29819d93f30061268b468e5c4856fe70d82aeab1ccb443ad1e3db49787"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.1/agentra_linux_arm64.tar.gz"
      sha256 "02a4d475803e577131c88df264bb76e4ffb1c56ecfbdac2690bf0036ab07f015"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  test do
    system "#{bin}/agentra", "version"
  end
end

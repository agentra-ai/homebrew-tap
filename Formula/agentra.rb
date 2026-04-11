# typed: false
# frozen_string_literal: true

class Agentra < Formula
  desc "Agentra CLI — local agent runtime and management tool"
  homepage "https://github.com/agentra-ai/agentra"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.3/agentra_darwin_amd64.tar.gz"
      sha256 "62607bda089eba082242de91a011fec22cda09b53145525ae83c5482f37835e6"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.3/agentra_darwin_arm64.tar.gz"
      sha256 "d0ab5a49518a529e53021acc3b64c5b9b030c13dca79bdf25cc7753216b5804e"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.3/agentra_linux_amd64.tar.gz"
      sha256 "14c529419cd804e987c066971362d6180503a6f49d77e7f90e5aac12047650f1"

      define_method(:install) do
        bin.install "agentra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/agentra-ai/agentra/releases/download/v0.0.3/agentra_linux_arm64.tar.gz"
      sha256 "809093f966b9eaab5c9927fe4a50e6458ea351d9dbbaa6b6ea84d5084eb604dd"

      define_method(:install) do
        bin.install "agentra"
      end
    end
  end

  test do
    system "#{bin}/agentra", "version"
  end
end

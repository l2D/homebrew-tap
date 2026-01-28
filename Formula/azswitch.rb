# typed: false
# frozen_string_literal: true

class Azswitch < Formula
  desc "Switch Azure Directory and Subscription with command and TUI"
  homepage "https://github.com/l2D/azswitch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/l2D/azswitch/releases/download/v0.1.0/azswitch_0.1.0_darwin_amd64.tar.gz"
      sha256 "6df859046ae5b62b6c0b81954bdcd4ed7342c34f1393cf5d70525aa92b139cc7"
    end

    on_arm do
      url "https://github.com/l2D/azswitch/releases/download/v0.1.0/azswitch_0.1.0_darwin_arm64.tar.gz"
      sha256 "d587d21f237fda08f74059b7325c3e4e18d5e27017d0ac85ec4b3ed7977f1ce9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l2D/azswitch/releases/download/v0.1.0/azswitch_0.1.0_linux_amd64.tar.gz"
      sha256 "c68a637a7c1057e74186b93aed95b48ffb2fd51b3d2cffb6a0b90d23b44c7a4c"
    end

    on_arm do
      url "https://github.com/l2D/azswitch/releases/download/v0.1.0/azswitch_0.1.0_linux_arm64.tar.gz"
      sha256 "95725c70d1f85f801297922e964b233f585eaa191f9b6577c939a9f7db98ea0b"
    end
  end

  def install
    bin.install "azswitch"
  end

  test do
    system "#{bin}/azswitch", "--version"
  end
end

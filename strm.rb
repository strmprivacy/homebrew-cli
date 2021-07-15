# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://streammachine.io"
  homepage "https://streammachine.io"
  version "1.1.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.1.3/strm_darwin_amd64.tar.gz"
      sha256 "dbacc4f0538f9d04631b2d00d61435cad681119d2371c3d4b1fff5e6dff2e1ca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/streammachineio/cli/releases/download/v1.1.3/strm_darwin_arm64.tar.gz"
      sha256 "ecbfefff14a97a73bc2bd9c6a8848c771b28ed167d97fdf931a562f1fce606e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/streammachineio/cli/releases/download/v1.1.3/strm_linux_amd64.tar.gz"
      sha256 "ada7849d45301c547877bccf87f9bc0fb3ba23d6ae3560f92cbffe66335af62d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/streammachineio/cli/releases/download/v1.1.3/strm_linux_arm64.tar.gz"
      sha256 "02a8f7df9af16ffb5b78525458758e2b4b1638021d914f39cd7f4e80e901e319"
    end
  end

  def install
    bin.install "strm"
  end

  def caveats; <<~EOS
    In order to set up auto completion, please follow the instructions below. When you've set up auto completion in the past, you can skip these instructions.

     for bash users
       add the following line to your .bash_profile or .bashrc:
         source <(strm completion bash)

       to load completions for each session, execute once:
         - Linux users: strm completion bash > /etc/bash_completion.d/strm
         - macOS users: strm completion bash > /usr/local/etc/bash_completion.d/strm

     for zsh users
       ensure that shell completion is enabled, then run (only needs to be done once):
         /bin/zsh -c 'strm completion zsh > "${fpath[1]}/_strm"'

     for fish users
       source "strm/path.fish.inc"
  EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end

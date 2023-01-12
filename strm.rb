# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "3.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.1/strm_darwin_amd64.tar.gz"
      sha256 "f87b148cdf86fe21f2320773a09309239aa30dca83016d8e848ec955464ad4a1"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.1/strm_darwin_arm64.tar.gz"
      sha256 "14b14428c92dc923069cc5085890b9743c5edf1e057a613e43dd92985f578c4b"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.1/strm_linux_arm64.tar.gz"
      sha256 "09d0ae7681219af1912a0a2522c3c58ebf2769ad952ca19d5723578dac22c2bb"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.8.1/strm_linux_amd64.tar.gz"
      sha256 "3aee906d908ae37eebb76cd61077eca5adfcbb830b1440a0bffd024a30a588a1"

      def install
        bin.install "strm"
      end
    end
  end

  def caveats
    <<~EOS
      In order to set up auto completion, please follow the instructions below. When you've set up auto completion in the past, you can skip these instructions.

       for bash users
         add the following line to your .bash_profile or .bashrc:
           source <(strm completion bash)

         to load completions for each session, execute once:
           - Linux users: strm completion bash > /etc/bash_completion.d/strm
           - macOS users: strm completion bash > /usr/local/etc/bash_completion.d/strm

       for zsh users
         ensure that shell completion is enabled, then run (only needs to be done once):
           strm completion zsh > "${fpath[1]}/_strm"

       for fish users
         strm completion fish > ~/.config/fish/completions/strm.fish # or $XDG_CONFIG_HOME instead of ~/.config
    EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end

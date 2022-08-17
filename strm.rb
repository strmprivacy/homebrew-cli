# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.11.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.11.1/strm_darwin_amd64.tar.gz"
      sha256 "b0e9badb6060f8d7a9bcdbd20961cede24dc0e222e0e9936f588f032a8879aaa"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.11.1/strm_darwin_arm64.tar.gz"
      sha256 "46dbfb2cf0c4e3a73aafca505515addea7f27ca2cf04a9b5d3a06d9608b1b77a"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.11.1/strm_linux_amd64.tar.gz"
      sha256 "f53383a799c9dad511d81650a0e493910397394183719f0e239937616f4f6e6f"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.11.1/strm_linux_arm64.tar.gz"
      sha256 "98b0c12aa571bf8dcebb013f8ccb814ad20883510e77e47e70aa447a99a70cd4"

      def install
        bin.install "strm"
      end
    end
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
       strm completion fish > ~/.config/fish/completions/strm.fish # or $XDG_CONFIG_HOME instead of ~/.config
  EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end

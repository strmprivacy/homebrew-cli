# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "1.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v1.19.0/strm_darwin_amd64.tar.gz"
      sha256 "4dcb3b9a4b690a328e3f63dc683c86525641f4cfb041d3edca965dfc2b007f01"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v1.19.0/strm_darwin_arm64.tar.gz"
      sha256 "f247ac5fa2d60efbd1fbf76e3474646103c035a0bf81d27ca65c79cbef82eae4"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v1.19.0/strm_linux_amd64.tar.gz"
      sha256 "4ac6ea3c6f8c7d2f2b929162f5dbaa60f93af3fdafc47026ff1090ad4bc11a97"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v1.19.0/strm_linux_arm64.tar.gz"
      sha256 "325c5cc3e4593de7c2eb4596129a3c8299229cabaa9bf09e378796b60fa1eef9"

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

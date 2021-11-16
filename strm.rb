# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "1.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v1.13.0/strm_darwin_amd64.tar.gz"
      sha256 "4a2621677ff88abd0c92895280541ffcc3477362eea2a2fe2cb822c0c1f20a06"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v1.13.0/strm_darwin_arm64.tar.gz"
      sha256 "fd48995a5e5cad576c08a06fa0d07afe07d082e0b80fabc77e642abd46cb2ad9"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v1.13.0/strm_linux_arm64.tar.gz"
      sha256 "36bde963d0340ed7094f87b3f6a83ac7a6396d52ff2dc85c1db047715b45b49d"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v1.13.0/strm_linux_amd64.tar.gz"
      sha256 "ef8203c8e3e0daa05ab53dd16edf9de2af9b66be346ce49905fd0464741e0a02"

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

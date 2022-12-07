# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "3.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v3.3.0/strm_darwin_arm64.tar.gz"
      sha256 "925e670b0dcff01723ec9ab094747fd0cb960e998226f8e450b372bfdb7f23b9"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.3.0/strm_darwin_amd64.tar.gz"
      sha256 "02720b927d6030b6e9cc55ff07b2fa6eb8ca5d22dc8d9949d66074e033a983df"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v3.3.0/strm_linux_amd64.tar.gz"
      sha256 "9bdd46b1883fbdd0b4d0cf681b45a94910686d3526793b6366a0237cf12001a3"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v3.3.0/strm_linux_arm64.tar.gz"
      sha256 "bb931db8a5adc38b123c446f8dfec207040a0c483653f8e774e747f6e916664b"

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
           /bin/zsh -c 'strm completion zsh > "${fpath[1]}/_strm"'

       for fish users
         strm completion fish > ~/.config/fish/completions/strm.fish # or $XDG_CONFIG_HOME instead of ~/.config
    EOS
  end

  test do
    system "#{bin}/strm --version"
  end
end

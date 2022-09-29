# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.17.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.3/strm_darwin_amd64.tar.gz"
      sha256 "8ceb979863094541b6671b2e9dddacd8bba4254b71889dbd84272761b04f8ce4"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.3/strm_darwin_arm64.tar.gz"
      sha256 "1ba2f585ac2c94254d5ca059b584f865b494dbb86fca40c3fc818025f4b55a7f"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.3/strm_linux_amd64.tar.gz"
      sha256 "96f0d1781d045d163fecb432164e35828ac45f22d6a54cd6abad8f2e2629befd"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.17.3/strm_linux_arm64.tar.gz"
      sha256 "468000aef3facb89a8420942f989112b232fadd2c404d0a1ffc5304e1dd6ee72"

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

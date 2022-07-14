# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strm < Formula
  desc "Command Line Interface for https://strmprivacy.io"
  homepage "https://strmprivacy.io"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.4.0/strm_darwin_amd64.tar.gz"
      sha256 "3a670aa99e807e0f11d2792fb10264a57b900146823278c01b667cd66d8a6842"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/strmprivacy/cli/releases/download/v2.4.0/strm_darwin_arm64.tar.gz"
      sha256 "07c9b59671cebdabf9537917f3b50f1288ba7407ad09a848fbeaf968be0f1a6c"

      def install
        bin.install "strm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/strmprivacy/cli/releases/download/v2.4.0/strm_linux_arm64.tar.gz"
      sha256 "8144337b9af3362b8eb792657ec4d55aec532c634f45e12c682d768aff1a4fd5"

      def install
        bin.install "strm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/strmprivacy/cli/releases/download/v2.4.0/strm_linux_amd64.tar.gz"
      sha256 "e10045d7344c99f8f299b8fec3e0ddc1fba50565b31a2147cb2eadd4c1ed4067"

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

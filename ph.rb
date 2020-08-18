# This file was generated by GoReleaser. DO NOT EDIT.
class Ph < Formula
  desc "CLI tool to access the product hunt trending products"
  homepage "https://sibis.dev"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sibis/producthunt-cli/releases/download/v0.1.0/ph_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "8b908cab21c9581c37f126107560e7198df5d5ac4a8d45057ef89ec6b024b227"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sibis/producthunt-cli/releases/download/v0.1.0/ph_0.1.0_Linux_x86_64.tar.gz"
      sha256 "680b560c43a845f6fcc47772d6eda039a0051d9429901c74459cb64b3dc30e7b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sibis/producthunt-cli/releases/download/v0.1.0/ph_0.1.0_Linux_arm64.tar.gz"
        sha256 "66a31efc29447bde37d19305b696793b02cf16061e69177a24f6d1db787bd485"
      else
        url "https://github.com/sibis/producthunt-cli/releases/download/v0.1.0/ph_0.1.0_Linux_armv6.tar.gz"
        sha256 "f62b6ee9badadf0bad0fd81450e3e70aee77f060b0cb30f1e0018749b98a3d68"
      end
    end
  end

  def install
    bin.install "ph"
  end
end

# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.1/pwsh-autoupdate-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "fe54b0a3324f588a687fc8ae444b68cdec282d97630675c03e6818ccf6372634"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.1/pwsh-autoupdate-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "1efe90ee5b15a3e4e461721f9b1b1e246cfee2c3ee923f42597c5064b45c5555"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.1/pwsh-autoupdate-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "542d81d8efe4471a052d0695d5d5837ee247263c77c8ed16cc76ce374bcbced1"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

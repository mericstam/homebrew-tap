# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.0/pwsh-autoupdate-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c9aee5376d3ead225b040f7dea56a9592f75f6d79a2f61c3ed97ab4e66a3f834"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.0/pwsh-autoupdate-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "192dcd6b02fc879e70e6cbfa38fefd587b15a16a539f8a6b5855f35e1fe38689"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.0/pwsh-autoupdate-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe9ee20d22eb6dbe50844463ec565f08f45130a5e593148d440f1f0629b4b706"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

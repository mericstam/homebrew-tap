# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.2/pwsh-autoupdate-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "d33a893ffb3db3d357b6ad1d8d808a3c35fd85a227720a1417f4b4eb46331045"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.2/pwsh-autoupdate-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a12c070292760afba753b1bbabfa7c5ab192408ac410ffe2498e56891f3f3e7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.2/pwsh-autoupdate-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b89aa618fecef7238e8e94f943f37a5276682c10896a5cc6bdf2e377c1d149a"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

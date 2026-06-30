# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.1/pwsh-autoupdate-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "07d24b563cad1eea674348e7b2e58abf01ddaacaf8bba0cfed8e70274de5e6ac"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.1/pwsh-autoupdate-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "2194de723147977c2282af4da8eecb85847b89158f12b84eeffecc24840a689c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.1/pwsh-autoupdate-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c95807762f020a21f91863226efef597768d80e3e28db73962e9762714e1131"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

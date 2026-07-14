# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.3.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.2/pwsh-autoupdate-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "be5cb94c107b5bc81dd156e7087ce18fdfcfe61f388f298217bd42928df3f732"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.2/pwsh-autoupdate-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "87cee42bddcacdaa8cbd7fb728fec872f7c7d198f5bd499dec0e7946f56b14b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.3.2/pwsh-autoupdate-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01e764c6e14629f811fd6341e505a693d1073dcfad91333d3653e968f09f0e58"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

# typed: false
# frozen_string_literal: true

# Homebrew formula for pwsh-autoupdate. Regenerated per release by
# scripts/gen-manifests.sh — do not edit by hand.
class PwshAutoupdate < Formula
  desc "Detect how PowerShell was installed and update (or install) it via the owning manager"
  homepage "https://github.com/mericstam/pwsh-autoupdate"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.0/pwsh-autoupdate-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4645f8e6f9760386489219a2740b40e081c6715322079d4a2244727f681f9c20"
    end
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.0/pwsh-autoupdate-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "39a4c59154654244f554775f641f5c65749027f1ab33cf18c2e5e119b8b8ff7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mericstam/pwsh-autoupdate/releases/download/v0.2.0/pwsh-autoupdate-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c41b2996e8a58c3e4b1b0a8eccd4b8a5870b8e9e42b0c6b528769b7ad96820c"
    end
  end

  def install
    bin.install "pwsh-autoupdate"
  end

  test do
    assert_match "pwsh-autoupdate #{version}", shell_output("#{bin}/pwsh-autoupdate --version")
  end
end

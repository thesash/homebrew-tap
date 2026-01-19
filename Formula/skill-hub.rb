class SkillHub < Formula
  desc "Manage skills across AI agents (Claude Code, Codex, Clawdbot)"
  homepage "https://github.com/thesash/skill-hub"
  url "https://github.com/thesash/skill-hub/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "12ce4c8928c6ac888b39be4da36ba37810d6d34633d38970f39f9fa7a99c244b"
  license "MIT"

  depends_on "gum"

  def install
    bin.install "scripts/skill-hub"
  end

  def caveats
    <<~EOS
      Run 'skill-hub init' to create your data directory at ~/.skill-hub/
    EOS
  end

  test do
    system "#{bin}/skill-hub", "path"
  end
end

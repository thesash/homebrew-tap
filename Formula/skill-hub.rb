class SkillHub < Formula
  desc "Manage skills across AI agents (Claude Code, Codex, Clawdbot)"
  homepage "https://github.com/thesash/skill-hub"
  url "https://github.com/thesash/skill-hub/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a70b975e082f26a27503f7a56d7fba25a2d76ccabab511aa8c5c0a9e4e2402ee"
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

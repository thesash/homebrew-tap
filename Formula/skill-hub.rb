class SkillHub < Formula
  desc "Manage skills across AI agents (Claude Code, Codex, Clawdbot)"
  homepage "https://github.com/thesash/skill-hub"
  url "https://github.com/thesash/skill-hub/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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

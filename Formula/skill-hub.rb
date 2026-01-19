class SkillHub < Formula
  desc "Manage skills across AI agents (Claude Code, Codex, Clawdbot)"
  homepage "https://github.com/thesash/skill-hub"
  url "https://github.com/thesash/skill-hub/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "53f512d199a66b83d3029c06263303dfbd5bdb93c1b8bb700c259a94ee1c15c3"
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

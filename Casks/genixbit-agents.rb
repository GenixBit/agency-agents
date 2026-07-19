cask "genixbit-agents" do
  version "0.3.0"
  sha256 :no_check

  url "https://github.com/genixbit/agency-agents/releases/download/v#{version}/genixbit-agents-roster.zip"
  name "Genixbit Agents"
  desc "Native AI agent roster and integration suite"
  homepage "https://github.com/genixbit/agency-agents"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Installs agents into Claude Code and supported CLI tools
  installer script: {
    executable: "#{staged_path}/scripts/install.sh",
    args:       ["--tool", "claude-code"],
  }

  zap trash: "~/.claude/agents"
end

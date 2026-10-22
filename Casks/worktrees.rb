cask "worktrees" do
  version "0.1.0"
  sha256 "be13821d2e64587ea2cf52b4c91373d9e040ba4670145e19431fb5eda0e1e6ca"

  url "https://github.com/antonijap/worktrees/releases/download/v#{version}/Worktrees-#{version}.zip"
  name "Worktrees"
  desc "Shows every git worktree with its pull request, checks and changes"
  homepage "https://github.com/antonijap/worktrees"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Worktrees.app"

  zap trash: [
    "~/Library/Preferences/me.apek.worktrees.plist",
    "~/Library/Saved Application State/me.apek.worktrees.savedState",
  ]
end

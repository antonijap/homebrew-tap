cask "worktrees" do
  version "1.0.0"
  sha256 "fa05cebf7c236ba4ba361a34818feb01ed8167b9e9af9537687abc9c217ccbf6"

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

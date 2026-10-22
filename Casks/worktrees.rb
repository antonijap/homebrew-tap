cask "worktrees" do
  version "1.1.1"
  sha256 "d0916f7b89d003a3022f431f697cb0fa52d4f79ddd2546745a6628d621ce4df6"

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
  binary "#{appdir}/Worktrees.app/Contents/MacOS/Worktrees", target: "worktrees"

  zap trash: [
    "~/Library/Preferences/me.apek.worktrees.plist",
    "~/Library/Saved Application State/me.apek.worktrees.savedState",
  ]
end

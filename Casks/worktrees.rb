cask "worktrees" do
  version "1.1.0"
  sha256 "03d0c85d364ad0c3290fdf3c07d69d19dd278b701aa746ec695060e5f379281b"

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

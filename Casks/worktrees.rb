cask "worktrees" do
  version "1.1.2"
  sha256 "0281ee8f49c523dc9683b47ece3b96c8a9f60055c84f62f4160609a869e4286b"

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

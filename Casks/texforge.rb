cask "texforge" do
  version "1.1.7"
  sha256 "c172f73592ad851ee0ecae9d8d6e32dfb80608c8ea4996e0010bad100d184edd"

  url "https://github.com/chkwon/TeXForge/releases/download/v#{version}/TeXForge-v#{version}-arm64.zip"
  name "TeXForge"
  desc "LaTeX editor with AI inline completion, a fork of TeXShop"
  homepage "https://github.com/chkwon/TeXForge"

  livecheck do
    url "https://github.com/chkwon/TeXForge/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "TeXForge.app"

  zap trash: [
    "~/Library/Caches/net.chkwon.TeXForge",
    "~/Library/Preferences/net.chkwon.TeXForge.plist",
    "~/Library/Saved Application State/net.chkwon.TeXForge.savedState",
    "~/Library/TeXForge",
  ]
end

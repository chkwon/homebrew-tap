cask "texforge" do
  version "1.1.7"
  sha256 "97288865122b3d16de2afc3aad5d6116b92e20f41d13376da41e9611a42ad04d"

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

cask "pdflaser" do
  version "0.1.4"
  sha256 "f7e6a4f5bafa12acff0a5cd58e526f165b50e59dc2077f3d858a2cd3eb5e773a"

  url "https://github.com/chkwon/homebrew-tap/releases/download/pdflaser-v#{version}/PDF-Laser-v#{version}-macOS-universal.zip"
  name "PDF Laser"
  desc "PDF slide presenter with laser pointer and pen markup"
  homepage "https://github.com/chkwon/PDFLaser"

  livecheck do
    url "https://github.com/chkwon/homebrew-tap/releases/latest"
    strategy :github_latest
    regex(/pdflaser[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sonoma"

  app "PDF Laser.app"

  zap trash: [
    "~/Library/Preferences/com.chkwon.PDFLaser.macOS.plist",
    "~/Library/Saved Application State/com.chkwon.PDFLaser.macOS.savedState",
  ]
end

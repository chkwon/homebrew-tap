cask "pdflaser" do
  version "0.1.8"
  sha256 "d6e6805f37c7edd3821f2a612520f05540524fdd32f04b6d5713be5f0d4122b1"

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

cask "pdflaser" do
  version "0.1.7"
  sha256 "96e8cee09fa56e6d6ce958d5558cdba9e951125e8d494a01b7a9214be1394a55"

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

cask "pdflaser" do
  version "0.1.9"
  sha256 "db7f05c82dcdcdec42c664c1b828a1292a13671623b97f88dce831577a0ab40d"

  url "https://github.com/chkwon/PDFLaser/releases/download/v#{version}/PDF-Laser-v#{version}-macOS-universal.zip"
  name "PDF Laser"
  desc "PDF slide presenter with laser pointer and pen markup"
  homepage "https://github.com/chkwon/PDFLaser"

  livecheck do
    url "https://github.com/chkwon/PDFLaser/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PDF Laser.app"

  zap trash: [
    "~/Library/Preferences/com.chkwon.PDFLaser.macOS.plist",
    "~/Library/Saved Application State/com.chkwon.PDFLaser.macOS.savedState",
  ]
end

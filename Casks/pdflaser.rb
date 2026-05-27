cask "pdflaser" do
  version "0.1.1"
  sha256 "8b9aa9731781300fc1ed740185e369af2d6cea96cd2b7255cd7da2c6f2b773bc"

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

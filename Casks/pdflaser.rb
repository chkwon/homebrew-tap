cask "pdflaser" do
  version "0.1"
  sha256 "71822e2611f1ebd29609125db754b80b17bc78cbaa58aa8efc7aed6f818477bf"

  url "https://github.com/chkwon/homebrew-tap/releases/download/pdflaser-v#{version}/PDF-Laser-v#{version}-macOS-universal.zip"
  name "PDF Laser"
  desc "PDF slide presenter with laser pointer and pen markup"
  homepage "https://github.com/chkwon/homebrew-tap"

  app "PDF Laser.app"
end

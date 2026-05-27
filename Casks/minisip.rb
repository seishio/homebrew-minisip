cask "minisip" do
  version "0.1.1"
  sha256 "2d3b4eec74c2d76a136ee85a18fcb6e72ba15462105df284c0fa258c2b62b52d"

  url "https://github.com/seishio/homebrew-minisip/releases/download/v#{version}/MiniSIP.zip"
  name "MiniSIP"
  desc "Легкий нативний macOS SIP-клієнт"
  homepage "https://github.com/seishio/homebrew-minisip"

  app "MiniSIP.app"

  zap trash: [
    "~/Library/Preferences/com.alex.minisip.plist",
    "~/Library/Application Support/MiniSIP",
  ]
end

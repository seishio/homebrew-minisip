cask "minisip" do
  version "0.1.2"
  sha256 "94279d2c89fcaca383d799eb14bbde8cca9885a809edf4f23978cda0df56c5cd"

  url "https://github.com/seishio/homebrew-minisip/releases/download/v#{version}/MiniSIP.zip"
  name "MiniSIP"
  desc "Легкий нативний macOS SIP-клієнт"
  homepage "https://github.com/seishio/homebrew-minisip"

  auto_updates true

  app "MiniSIP.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MiniSIP.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.alex.minisip.plist",
    "~/Library/Application Support/MiniSIP",
  ]
end

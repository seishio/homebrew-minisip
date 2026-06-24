cask "minisip" do
  version "0.1.3"
  sha256 "d4e4f4285d88e0bb3c50f9531bdc989b3e8d3c4f5a6ec84972ab5dc5dcc24202"

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

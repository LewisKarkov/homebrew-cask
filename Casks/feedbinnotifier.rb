cask "feedbinnotifier" do
  version "2.0.0"
  sha256 "82234ee8992e5180cfc3dac8624eb8e75047c80bb4e7e2360c71b226a211c40c"

  url "https://github.com/kmikael/FeedbinNotifier/releases/download/v#{version}/FeedbinNotifier.zip"
  name "Feedbin Notifier"
  desc "Feedbin unread count in menu bar."
  homepage "https://github.com/kmikael/FeedbinNotifier"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url ""
    strategy ""
  end

  app "FeedbinNotifier.app"

  uninstall quit: "com.kmikael.FeedbinNotifier"
  
  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: "~/Library/Preferences/com.kmikael.FeedbinNotifier.plist"
end

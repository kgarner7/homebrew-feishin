cask "feishin" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"

  sha256 :no_check

  url "https://github.com/jeffvli/feishin/releases/download/v#{version}/Feishin-#{version}-mac-#{arch}.dmg"
  name "Feishin"
  desc "Modern self-hosted music player"
  homepage "https://github.com/jeffvli/feishin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Feishin.app"

  # Remove quarantine after installation so users don't have to do it manually.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-r", "-d", "com.apple.quarantine", "{{appdir}}/Feishin.app"],
        must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/feishin",
    "~/Library/Logs/feishin",
    "~/Library/Preferences/org.jeffvli.feishin.plist",
    "~/Library/Saved Application State/org.jeffvli.feishin.savedState",
  ]
end

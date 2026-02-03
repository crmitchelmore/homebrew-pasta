cask "pasta" do
  version "0.7.6"
  sha256 "765eb685a00ca3ab7e490b38fb3957f89ee5a6a8dbaf4c3173d093a5c381be5b"

  url "https://github.com/crmitchelmore/pasta/releases/download/v#{version}/Pasta-#{version}.dmg"
  name "Pasta"
  desc "Blazing-fast, local-first clipboard history manager for macOS"
  homepage "https://pasta-app.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Pasta.app"

  zap trash: [
    "~/Library/Application Support/Pasta",
    "~/Library/Caches/com.pasta.clipboard",
    "~/Library/Preferences/com.pasta.clipboard.plist",
  ]
end

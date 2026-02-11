cask "pasta" do
  version "0.8.0"
  sha256 "e791cfac7a191803b569cfdd4c6341464bb4fdc036d54d96f9f475fb427db848"

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

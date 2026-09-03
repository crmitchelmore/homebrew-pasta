cask "pasta" do
  version "1.5.10"
  sha256 "ef3055c9dcf7a0ca88cf296c6bd597996bca31571971bff187a94ea6f0a2723e"

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

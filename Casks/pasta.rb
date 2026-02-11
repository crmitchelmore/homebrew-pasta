cask "pasta" do
  version "0.8.1"
  sha256 "5ec103ec4dc4894ef4a54cbfb9a76b50fdcda4528fa0d2a0fcb87d25c733eca0"

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

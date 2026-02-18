cask "pasta" do
  version "0.14.4"
  sha256 "534b351e308e17c7f8f45df7ebae7c79f6867b0defc6178e1672bb8a3103c51a"

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

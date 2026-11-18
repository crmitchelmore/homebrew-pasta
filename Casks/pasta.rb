cask "pasta" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "1.11.0"
  sha256 arm:   "7290b22331d10881b0da0e29053c1c09b878de9ff4cf2824896f6afef17bbd25",
         intel: "29939fe5ea5a3f6987465cf881600382039010cbc0380cb72b0fac74735240ab"

  url "https://github.com/crmitchelmore/pasta/releases/download/v#{version}/Pasta-#{version}-#{arch}.dmg"
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

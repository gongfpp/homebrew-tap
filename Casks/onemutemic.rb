cask "onemutemic" do
  version "1.0.0"
  sha256 "42c8073d1f8381fb9c4f1b7236adc720e7971de63b65cb7cf664e9cec7d2d05c"

  url "https://github.com/gongfpp/OneMuteMic/releases/download/v#{version}/OneMuteMic-#{version}.zip"
  name "OneMuteMic"
  desc "Menu bar app that mutes the microphone system-wide with one hotkey"
  homepage "https://github.com/gongfpp/OneMuteMic"

  depends_on macos: ">= :ventura"

  app "OneMuteMic.app"

  zap trash: [
    "~/Library/Preferences/com.mass.onemutemic.plist",
  ]

  caveats <<~EOS
    OneMuteMic is not notarized yet, so macOS may block the first launch with
    "Apple cannot verify ...".

    Install without the quarantine attribute so it opens normally:
      brew install --cask --no-quarantine gongfpp/tap/onemutemic

    (If you already installed it, run the same command again; or open it once via
    System Settings › Privacy & Security › "Open Anyway".)
  EOS
end

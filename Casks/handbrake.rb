cask 'handbrake' do
  version '1.0.0'
  sha256 'be51aa13eed29d6426e87f0111c0de2bd408214af4ba1b5d45c910ae1c626a52'

  url "http://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: '6d23bce7181a5d1dc6e7145bab14f3e85abfa55a941005c68bbbef25c95ba05c'
  name 'HandBrake'
  homepage 'https://handbrake.fr/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'HandBrake.app'

  zap delete: [
                '~/Library/Application Support/HandBrake',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl',
                '~/Library/Caches/fr.handbrake.HandBrake',
                '~/Library/Preferences/fr.handbrake.HandBrake.plist',
                '~/Library/Saved Application State/fr.handbrake.HandBrake.savedState',
              ]
end

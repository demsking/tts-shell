# tts-shell
This script use the Google TTS API to read the current selected (copied) text.

# Install
Firstly install the `xsel` and `mplayer` packages:

```shell
sudo apt install -f xsel mplayer
```

Then, install the python tool `fastlang` for language detection (https://github.com/kootenpv/fastlang):

```shell
git clone https://github.com/kootenpv/fastlang.git
cd fastlang
sudo python setup.py install
```

Finally, copy the `tts-shell` script to `~/.local/bin`:

```shell
wget -P ~/.local/bin https://raw.githubusercontent.com/demsking/tts-shell/master/tts-shell.sh
chmod +x ~/.local/bin/tts-shell.sh
```

# Tip
You can add a global custom shortcut to read the last selected text. Follow this link to know how adding one on KDE Plasma: https://docs.kde.org/trunk5/en/kde-workspace/kcontrol/khotkeys/index.html

# License
Under the GPL3 license. See [LICENSE](https://github.com/demsking/tts-shell/blob/master/LICENSE) file for more details.

# CodeX Sound Player Script
![codex-sounds](https://github.com/5M-CodeX/codex-sounds/assets/112611821/fe3c6a18-4de6-45d6-8477-2b85ddac07a0)

This is a Lua script for CitizenFX (FiveM) that allows you to play sounds and send messages to clients when specific events are triggered. It includes a delay to ensure the player has fully loaded before handling events.

# Usage
Playing Sounds
You can use this script to play sounds on clients. To do so, trigger the `codex-sound:PlayOnOne` event with the sound file path and volume as parameters.

`TriggerEvent('codex-sound:PlayOnOne', 'path/to/sound_file.ogg', 0.5)`

Replace 'path/to/sound_file.ogg' with the path to your sound file and 0.5 with the desired volume.

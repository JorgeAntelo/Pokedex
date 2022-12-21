
# Pokedex
The Pokédex is an electronic device created and designed to catalog and provide information about pokemons.
## Setup
### Install the Android SDK tools
Download Android Studio from their official website, and follow their installation instructions.

https://developer.android.com/studio?gclsrc=ds&gclsrc=ds

Once installed, make sure to download an SDK package on the SDK tool, the project was made using the Android 12.0(S) SDK

### Install VS Code
Just download and install VS Code, no further changes needed.

https://code.visualstudio.com/download

### Install Flutter
Download the flutter SDK from their official website, follow the instructions given on the page

https://docs.flutter.dev/get-started/install/windows

You can verify Flutter was installed correctly with the command:

`Flutter doctor`

All fields should be positive, but it is irrelevant if `VS - Develop for windows` package or `Chrome` are not installed.

### Connect a device
The quickest and easiest way to connect a device for testing and debugging is using a smartphone.

On the settings, you must enable the developer mode and then enable USB debugging.

Once that's done, plug the phone to the PC with a USB cable, and make sure the device is recognized by entering `flutter devices` on the console.

If the device shows up on the console, it should be visible on VS Code's bottom bar in a small label to the right side.

You can find more detailed explanations and alternatives here:

https://docs.flutter.dev/get-started/install/windows#:~:text=Using%20a%20USB%20cable%2C%20plug,recognizes%20your%20connected%20Android%20device.

## Download and install the project.

The project can be found on the following github repo: https://github.com/JorgeAntelo/Pokedex.git

You can clone it using the following command: `git clone https://github.com/JorgeAntelo/Pokedex.git`

Once cloned, open the project on VS Code and run `flutter pub get` on a local console.

Now enter `Flutter run` on the console and that's it, you can check all those pokemons yourself.




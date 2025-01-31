# TTR Nulea M512

## This is a script that will allow you to change the button mappings on the Nulea M512 and allow vertical and horizontal scrolling with the trackball. You can then use rofi to switch configurations on the fly.

## Dependencies:
`git`

`rofi (OPTIONAL)`

## Install:
```
mkdir -p ~/.scripts/
cd ~/.scripts
git clone https://github.com/TheTechRun/TTR-NuleaM512
chmod +x ~/.scripts/TTR-NuleaM512/*.sh
```

## Instructions:
### 1. Run the `mapper.sh`
```
~/.scripts/TTR-NuleaM512/mapper.sh
```
 Now and go through the prompts (pretty self-explanatory) and save your new mappings. Your new configuration will be saved in the `saved-mappings` directory.

### 2. You can either:

a): In terminal, run your new configuration script located in the `saved-mappings` directory.
Example: 
```
bash ~/.scripts/TTR-NuleaM512/saved-mappings/righty.sh
```

b). Launch via rofi script. This will list all of our configurations in the `saved-mappings` directory so that you can switch them on the fly.
Example:
```
bash ~/.scripts/TTR-NuleaM512/launch.sh
```
You can bind the `launch.sh` to a shortcut key. 

Example for i3wm:
```
bindsym Mod1+7 exec $HOME/.scripts/TTR-NuleaM512/launch.sh

```

### 3. (Optional): Your button mappings will reset to default after:
- The computer restarts.
- The mouse is disconnected and reconnected.
- The system suspends/resumes a reboot or logout.

#### So here are some more permanent solutions:

#### a). Bind it to a shortcut key.

Example for i3wm:
```
bindsym Mod1+8 exec ~/.scripts/TTR-NuleaM512/saved-mappings/lefty.sh
```

#### b). Have it startup with your Window Manager.

Example for i3wm:
```
exec_always --no-startup-id ~/.scripts/TTR-NuleaM512/saved-mappings/lefty.sh
```

#### c). Add it to systemD timer.
Example for NixOS in configuration.nix:
```
# Nulea M512
  systemd.user.services.enable-scroll = {
    description = "Remaps and enable scrolling with Nulea M512 button";
    wantedBy = [ "default.target" ];
    script = "${pkgs.bash}/bin/bash ~/.scripts/TTR-NuleaM512/saved-mappings/lefty.sh";
  };
```

## Issues:
If the script does not work then it can be because your mouse name is something different.
Run this command to get your mouse name:
```
xinput list | grep -i Compx
```
Now in `mapper.sh` replace "Compx 2.4G Receiver Mouse" with the right output name.

I also made a script like this for the [Kensington Expert](https://github.com/TheTechRun/TTR-KensingtonExpert).
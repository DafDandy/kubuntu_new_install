# Game configuration
This game will take awhile to properly install all of the scripts that are needed so be prepared for the wait

You'll be met with compiling shaders, this is a required step that needs to be done for any Nvidia GPU

![image](https://github.com/DafDandy/Fedora_New_Install/assets/102477185/daaf8393-26dd-4feb-acdc-05b21167c3a0)




## Launcher options

This will bypass the splash screen and auto-launch the game
![image](https://github.com/DafDandy/Fedora_New_Install/assets/102477185/38d04526-8332-40bf-a6d3-0b8de41996c5)

These parameters in the lauch options fixed all the stuttering and crashing for me

    PROTON_ENABLE_NVAPI=1 DXVK_ENABLE_NVAPI=1 VKD3D_CONFIG=dxr,dxr11 PROTON_HIDE_NVIDIA_GPU=0 %command% --skip-launcher


#### Launcher errors

At the time this is written you'll encounter an error with the launcher

![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/a7cbe749-98b0-4454-add0-1c52cfde360b)

Since Nvidia are a bunch of cucks, you're stuck with the older driver version until they decide to grace us with the privilege of having proper support.




Also you can use DLSS in game to account for some of the performance loss

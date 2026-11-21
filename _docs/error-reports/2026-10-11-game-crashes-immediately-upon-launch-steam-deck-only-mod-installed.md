# Game crashes immediately upon launch; Steam Deck, only mod installed
**Tags:** CK3, Ongoing Issue, Sev 1 - Crashes Game
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1558916088677404764)
---
## Report
**igno0213** · *2026-10-11*
I have verified the compatibility of other mods, and it is just this one that presents issues. I am using a steam deck and have made full use of CryoUtilities - hardware is not the issue, as the game itself runs perfect; flawless, even. The problem only presents itself when activating this mod; I am met with the attached error immediately upon launch.
![Screenshot_20261011_115148.png](https://cdn.discordapp.com/attachments/1558916088677404764/1558916237566939226/Screenshot_20261011_115148.png?ex=6afe9da2&is=6afd4c22&hm=6ff2b5b42e3f9acf505c74ad23a005307fbfa72c13f3266c322454d91419de37&)
---

## Discussion (3 comments)

**igno0213** · *2026-10-11*
The provided crash details are as follows:

[S_API] SteamAPI_Init(): Loaded '/home/deck/.local/share/Steam/linux64/steamclient.so' OK.
Setting breakpad minidump AppID = 1158310
SteamInternal_SetMinidumpSteamID:  Caching Steam ID:  76561199121895843 [API loaded no]
Warning: 2 log categories not defined in log_settings_live.json
Game AI
Game Tests

Fossilize INFO: Overriding serialization path: "/home/deck/.local/share/Steam/steamapps/shadercache/1158310/fozpipelinesv6/steamapprun_pipeline_cache".
The futex facility returned an unexpected error code.
Trying to Write minidump to dir: /home/deck/.local/share/Paradox Interactive/Crusader Kings III/crashes/ck3_20261011_115706/
Created Minidump: /home/deck/.local/share/Paradox Interactive/Crusader Kings III/crashes/ck3_20261011_115706//e8439b15-7932-4ede-5a3a5fb3-2cd83156.dmp

**eastpointed** · *2026-10-11*
I dont have much experience with the steam deck, it mentions issues with "shadercache", so i wonder if its a graphics issue.

In the game settings are you able to mess around with Graphics settings? Maybe try toggling the "Renderer" setting between vulkan and dx11

**igno0213** · *2026-10-11*
Within game settings the only options available are Vulkan and OpenGL, which is listed as deprecated. Neither option works, and both lead to a crash.

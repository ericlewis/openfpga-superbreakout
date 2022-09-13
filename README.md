# Super Breakout for Analogue Pocket

+ FPGA implementation by james10952001 of Arcade _Super Breakout_ (Atari, 1978) for Analogue Pocket.
+ Ported from [MiSTer.](https://github.com/MiSTer-devel/Arcade-SuperBreakout_MiSTer/)
+ Multiplayer support via dock.

## Known Issues

+ Double / Progressive modes not implemented.
+ Audio is probably not quite right.

## ROM Instructions

ROM files are not included, you must use [mra-tools-c](https://github.com/sebdel/mra-tools-c/) to convert to a singular `sbrkout.rom` file, then place the ROM file in `/Assets/superbreakout/common`.
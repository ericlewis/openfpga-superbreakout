# Super Breakout for Analogue Pocket

+ FPGA implementation by james10952001 of Arcade _Super Breakout_ (Atari, 1978) for Analogue Pocket.
+ Ported from [MiSTer](https://github.com/MiSTer-devel/Arcade-SuperBreakout_MiSTer/) and refreshed against the current upstream wrapper behavior.
+ Multiplayer support via dock.

## Known Issues

+ Dedicated paddle hardware is not available on Pocket. Use digital buttons, the left analog stick, or a docked USB mouse.

## ROM Instructions

ROM files are not included, you must use [mra-tools-c](https://github.com/sebdel/mra-tools-c/) to convert to a singular `sbrkout.rom` file, then place the ROM file in `/Assets/superbreakout/common`.

## Controls

+ D-pad and `Y`/`A` both move the paddle left/right in button mode.
+ `B` serves the ball.
+ `X` starts 2-player mode.
+ `Start` starts 1-player mode.
+ `Select` inserts a coin.
+ The left analog stick can be enabled from Core Settings > Control.
+ A docked USB mouse can be enabled from Core Settings > Control. Mouse movement controls the paddle and left click serves.

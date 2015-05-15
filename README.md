================
LIERO for TI Nspire
================

Ported to TI Nspire CX by gameblabla

Liero ported to the TI Nspire.
Liero is kind of like Work but except it's not turn-by-turn.
I have no idea if this work properly on B&W Nspires though, let me know  !

Before you play the game,
configure the controls in Options ->  Player 1 Options.
Then press CTRL on commands like "Fire" to change the default mapping.

=============
INSTALLATION
=============

Ndless is required for this game.
Make sure you have enough memory for this game !
If you're not sure, clean your calc up with Ncleaner and reset it.

This particular game does not support relative directories
so you need to put all the folder "data" in a new folder called "liero".
The "liero" folder must be created at the root of your calc.
Then put the data folder in that folder along with the tns file.
To start the game, start "liero.tns".

=====================================

Forked from http://code.google.com/p/openliero/
Fork maintained by Artur Rojek (Zear)

See COPYRIGHT for licensing info.

Changes:
03/10/2014 - first official release
* Extracted essencial game data from the DOS LIERO.EXE, removing the necessity of requiring that file
* Replaced certain non-free data files with free assets from the LieroLibre project
* Added $HOME support
* Various fixes for GCW Zero

08/10/2012
* Replaced Jamfile with a Makefile
* Digging with left/right + jump
* Removed upscale support
* Missing #include <cstdio> added to text.hpp

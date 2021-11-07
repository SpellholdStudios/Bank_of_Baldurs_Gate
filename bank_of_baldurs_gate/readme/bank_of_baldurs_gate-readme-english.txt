*****************************************
*         BANK of BALDUR'S GATE         *
*             A mod for EET             *
*              Version 0.3              *
*               by Lassal               *
*****************************************



1. OVERVIEW
===========

The main idea of this mod is a thought, that often player is left without money. And it's stupid that there is not a single bank in the big city of Baldur's Gate. So I wrote this mod.

Near the Iron Throne Headquarters, there is a locked dwelling with ogre magi inside. This is the Ducal Bank of Baldur's Gate, that was blocked due to robbing by ogres. After you kill the ogre magi, you may return after one day passed, and find that bank returned to work. Go to second floor and open an account by talking to director Billboo. You can deposit or withdraw your money at any time.
 
Director will be waiting for you near bank after initial happenings of Siege of Dragonspear, so you can withdraw your money from your account if needed.

WARNING: in BG2 campaign, if you want to go to the bank and retrieve your money, you need to install a separate mod that enables visiting Baldur's Gate city after BG2 part started.

PPPS Don't know how to rename location name or place location on area map yet.



2. INSTALLATION
===============

Standard for WeiDU mods. Unpack contents of archive in your game folder, and run setup-bank_of_baldurs_gate.exe.
For Mac OS and Linux, please read the instructions here: 



3. ACKNOWLEDGEMENTS
===================

- Spellhold Studios team for hosting the mod.
- All avatars for bank's personnel are available under Creative Commons C0 license and were acquired from pixabay site ( https://pixabay.com/ ). These avatars don't require mentioning authors and can be used in commercial means (this mod is not commercial, of cause).
- Gwendolyne: French translation.
- yota13: Russian translation.



4. TOOLS USED
=============

This mod has been created using the following tools:

- WeiDU (Weimer Dialogue Utility), by Wes Weimer, the bigg and Wisp. [ https://github.com/WeiDUorg/weidu/releases ]
- Near Infinity, by Jon Olav Hauglid, FredSRichardson, and Argent77. [ https://github.com/Argent77/NearInfinity/releases ]
- IESDP (Infinity Engine Structures Description Project), maintained by igi and lynx. [ https://gibberlings3.github.io/iesdp/ ]
- Notepad++, by the Notepad++ team, Don Ho, and the spellcheck plug-in. [ http://notepad-plus-plus.org/ ]
- WeiDU Notepad++ Highlighters, by Argent77. [ http://www.shsforums.net/files/file/1048-weidu-highlighter-for-notepad/ ]
- Infinity Auto Packager, by AL|EN. [ https://forums.beamdog.com/discussion/78364/infinity-auto-packager-automatically-generate-and-adds-mod-packages-to-release-when-you-publish-it ]



5. VERSION HISTORY
==================

Version 0.3 (November 7, 2021)
------------------------------
- Added 'bank_of_baldurs_gate.ini' metadata file (including dynamic installation order syntax and global `LABELS`) to support AL|EN's "Project Infinity".
- Renamed 'Setup-Bank_of_Baldurs_Gate.tp2' -> 'bank_of_baldurs_gate.tp2', and moved it into mod top folder to support AL|EN's "Project Infinity".
- Added `VERSION` flag.
- Added `README` command.
- Added Immutability concept.
- Added component `DESIGNATED` number and "sh_bank_of_baldurs_gate" `LABEL`.
- Added `REQUIRE_PREDICATE` conditions to avoid installing the mod in inaccurate games.
- Added map notes.
- Added French translation (thanks Gwendolyne).
- Added Russian translation (thanks yota13).
- Proofread English strrefs.
- TRAified mod.
- Translated, updated, and renamed readme files to "bank_of_baldurs_gate-readme-%LANGUAGE%.txt", then moved them into new "readme" folder.
- Removed useless "backup" folder.
- Lower cased files.
- Included Linux and Mac OS versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
- Updated WeiDU installer to v247.
- Uploaded mod to official Spellhold Studios GitHub mirror account.

Version 0.2 (January 10, 2021)
------------------------------
- Fixed one of bank guards portraits.
- Now one day must be passed after defeating ogres to Bank to open.

Version 0.1 (June 29, 2018)
---------------------------
- Initial release.

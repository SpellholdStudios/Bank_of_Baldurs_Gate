********************************************
*       BANQUE de LA PORTE DE BALDUR       *
*             Un mod pour EET              *
*               Version 0.3                *
*                par Lassal                *
********************************************



1. INTRODUCTION
===============

Ce mod a été écrit à partir du constat que le joueur se retrouve parfois sans argent. De plus, il est incompréhensible qu'une grande ville comme La Porte de Baldur ne possède aucune banque.

À côté du quartier général du Trône de Fer se trouve un bâtiment verrouillé grouillant d'ogres mages. Il s'agit de la banque ducale de la Porte de Baldur qui était hors service suite à un cambriolage effectué par les ogres. Retourner dans le bâtiment une journée après avoir tué les ogres, et la banque sera de nouveau opérationnelle. Montez à l'étage et ouvrez un compte auprès du directeur Billboo. Vous pourrez déposer ou retirer de l'argent à tout moment.
 
Après l'ouverture de la campagne du Siège de Vougedragon, il vous attendra près de la banque et vous pourrez ainsi retirer votre argent si vous le souhaitez.

ATTENTION: Dans la campagne de BG2, si vous souhaitez récupérer votre argent, vous devrez installer un autre mod qui vous permette de retourner dans la Porte de Baldur pour y récupérer votre argent dans la banque.



2. INSTALLATION
===============

Ce mod s'installe comme un mod WeiDU normal. Extrayez le contenu de l'archive dans le répertoire de votre jeu et double-cliquez sur le fichier setup-bank_of_baldurs_gate.exe.
Pour les systèmes d'exploitation Mac et Linux, veuillez lire les instructions disponibles ici :  



3. REMERCIEMENTS
================

- L'équipe de Spellhold Studios pour avoir hébergé le mod.
- Les portraits du personnel de la banque sont disponible sous licence Creative Commons C0 et provienne du site pixabay( https://pixabay.com/ ). Ils ne nécessitent pas de copyright à condition d'être utilisés à des fins non commerciales (comme ce mod).
- Gwendolyne : traduction française.
- yota13 : traduction russe.



4. OUTILS UTILISÉS
==================

Ce mod a été créé avec les outils suivants :

- WeiDU (Weimer Dialogue Utility), de Wes Weimer, the bigg et Wisp. [ https://github.com/WeiDUorg/weidu/releases ]
- Near Infinity, de Jon Olav Hauglid, FredSRichardson, et Argent77. [ https://github.com/Argent77/NearInfinity/releases ]
- IESDP (Infinity Engine Structures Description Project), maintenu par igi et lynx. [ https://gibberlings3.github.io/iesdp/ ]
- Notepad++, by the Notepad++ team, Don Ho, and the spellcheck plug-in. [ http://notepad-plus-plus.org/ ]
- WeiDU Notepad++ Highlighters, by Argent77. [ http://www.shsforums.net/files/file/1048-weidu-highlighter-for-notepad/ ]
- Infinity Auto Packager, by AL|EN. [ https://forums.beamdog.com/discussion/78364/infinity-auto-packager-automatically-generate-and-adds-mod-packages-to-release-when-you-publish-it ]



5. HISTORIQUE des VERSIONS
==========================

L'historique n'est pas traduit pour faciliter la mise à jour du mod.

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


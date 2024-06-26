        ��  ��                  
  <   ��
 A D D C O M P L E T E G O A L                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red155\green0\blue211;\red0\green77\blue187;\red0\green176\blue80;\red192\green80\blue77;\red79\green129\blue189;\red128\green100\blue162;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Add/Complete Goal\b0  -- Use this event to create or clear a goal.  \par
The "\cf1 Goal Name\cf0 " is a unique FName value used internally to identify the goal.  \par
The "\cf2 Goal Text\cf0 " box contains the text description that the player will see.  \par
Checking the "\cf3 Primary Goal\cf0 " box will make the goal "\cf4 primary\cf0 "\f1\lang1033 ,\f0\lang1049  which means it will remain with the player until it is explicitly cleared in another conversation.  ("\cf5 Secondary\cf0 " goals automatically vanish from the Goals/Notes screen at the end of each mission)\f1\lang1033 .\f0\lang1049\par
Click the "\cf6 Goal Completed\cf0 " box to specify that the goal has just been completed.  When completing a goal, you only need to specify the Goal Name, not the description.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
   �  4   ��
 A D D C R E D I T S                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Add Credits\b0  -- Adds credits to the player's money supply.  To subtract credits, specify a negative number.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
    ,   ��
 A D D N O T E                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Add Note\b0  -- Adds a Note to the Goals/Notes screen.  Useful for recording critical information such as door-codes, so that the player doesn't have to write anything down.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
   {  <   ��
 A D D S K I L L P O I N T S                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Add Skill Points\b0  -- Gives the player some skill points.\f1\lang1033\par
}
  �  8   ��
 B U Y S E L L T R A D E                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset0 Lucida Sans Unicode;}{\f1\fnil\fcharset204 Lucida Sans Unicode;}{\f2\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24\lang1033 Buy/Sell/Trade\b0\f1\lang1049  -- not implemented.\f2\lang1033\par
}
 �  4   ��
 C H E C K F L A G S                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red155\green0\blue211;\red0\green176\blue80;\red192\green80\blue77;\red255\green0\blue0;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Check Flag\f1\lang1033 s\b0\f0\lang1049  -- Jumps to a particular label based on the values of a group of flags.  You specify the label in the "\cf1 If Flags Set Jump To\cf0 " field.  \par
The label \ul must exist \ulnone in the current conversation.  \par
To define the logic that needs to be checked, first use the "\cf2 Add Flag\cf0 " button to bring up a list of available flags.  \par
If the flag you want to check is not in the list, click the "\cf3 Edit Flags\cf0 " button to add a new flag-name to the table, then return to the Flag List dialog and double-click on the flag you just added.  \par
Back in the main Properties window, you can double-click on a flag to toggle whether its value should be \cf2\ul true\cf0\ulnone  or \cf4\ul false\cf0\ulnone .  \par
Note that the Check Flag event will perform a logical \ul AND\ulnone  operation on the flag values you specify; that is, the Check Flag event will perform the jump only when ALL of the flags you listed have the values you specified.  To simulate an \ul OR\ulnone\i  \i0 operation, use two Check Flag events in a row.\f1\lang1033\par
}
  �  4   ��
 C H E C K O B J E C T                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red255\green0\blue0;\red155\green0\blue211;\red0\green77\blue187;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Check Object\b0  -- This event will jump to a label when a particular object is \cf1 NOT \cf0 in the player's inventory.  \par
The "\cf2 Object To Look For\cf0 " field will let you select an object from the .con file's table of objects.  \par
To add an object to the table, just type its class name into the field and then click to edit another field in the Properties dialog.  (You will automatically be asked whether you want to add the new object to the table.)\par
Examples of class names: WeaponModSilencer, WeaponPistol, Binoculars.  (These are the class names that appear in UnrealEd's class browser.)   \par
Specify the destination label in the "\cf3 If Object Not Found, Jump to Label\cf0 " field.  The label \ul must be in the current conversation\ulnone .\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
   8   ��
 C H E C K P E R S O N A                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Calibri;}}
{\colortbl ;\red128\green100\blue162;\red155\green0\blue211;\red0\green176\blue80;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Check Persona\b0  -- Use this event to perform a logical check on the player's health, credits, or skill points.  You can specify a logical operation in the "\cf1 Condition\cf0 " field, a value in the "\cf2 Value\cf0 " field, and the destination label in the "\cf3 Label to jump to\cf0 " field.  The label must be in the current conversation.\par

\pard\sa200\sl276\slmult1\f1\fs22\lang1033\par
}
    i  ,   ��
 C H O I C E                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fswiss\fprq2\fcharset204 Lucida Sans Unicode;}{\f1\fmodern\fprq1\fcharset204 Consolas;}}
{\colortbl ;\red0\green77\blue187;\red192\green80\blue77;\red156\green133\blue192;\red155\green0\blue211;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Choice\b0  -- This event presents the player with a dialogue choice.  \par
The "\cf1 Add Choice\cf0 " button will bring up the complicated "\cf2 Edit Choice\cf0 " dialog, which will allow you to specify a single line of dialogue and some logic associated with it. \par
You have to specify at least two dialogue options.  When the player clicks on one of the options, JC will say the line, then the conversation will jump to the label associated with the particular choice.  \par
If you put a Move Camera event just prior to a Choice, the engine will use that camera angle when JC speaks the choice text.  \par
The choice text and destination label are defined together within the "\cf3 General\cf0 " tab of the "\cf2 Edit Choice\cf0 " dialog.  \par
The "\cf4 Flags\cf0 " tab lets you specify that the dialogue option appear only when certain logical conditions are met.  \par
For instance, if you wanted JC to be able to ask about the NanoSword only after the player has heard an NPC talk about it, you could use the Flags tab to check for KnowsOfNanoSword = true.  Then, in another conversation somewhere, you could use the Set Flag event to set KnowsOfNanoSword = true when an NPC mentions the sword.\par
\f1\par
}
    �  ,   ��
 C O M M E N T                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Comment\b0  -- Use this event to make notes to yourself or for the voice-actors.  The player won't see this text.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
   p  H   ��
 C O N V P R O P E R T I E S I N V O K E                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1058{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}{\f2\fnil\fcharset0 Calibri;}}
{\colortbl ;\red155\green0\blue211;\red0\green77\blue187;\red0\green176\blue80;\red128\green100\blue162;\red128\green158\blue194;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\widctlpar\sl240\slmult1\f0\fs24\lang1049 "\cf1 PC Frobs NPC\cf0 " -- checking this will cause the convo to trigger when the player clicks on the NPC who owns  it.\par

\pard\widctlpar\par
"\cf2 NPC Enters PC Radius\cf0 " -- checking this will cause the convo to trigger whenever the player gets within a certain radius of the NPC.  You define the radius in the text field beneath this \f1\lang1033 checkbox\f0\lang1049 .  The integer value you enter should be in Unreal "\cf3 units\cf0 ".  16 units = 1 foot.\par
\par
The other two options don't do anything.  The "\cf4 seeing\cf0 " option was never implemented and the "\cf5 Bump\cf0 " triggering was goofy and got hard-coded to behave like frob-triggering.\par

\pard\sa200\sl276\slmult1\f2\fs22\lang9\par
}
 �  H   ��
 C O N V P R O P E R T I E S O P T I O N S                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1058{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}{\f2\fnil\fcharset0 Calibri;}}
{\colortbl ;\red155\green0\blue211;\red0\green77\blue187;\red0\green176\blue80;\red192\green80\blue77;\red221\green132\blue132;\red156\green133\blue192;\red128\green158\blue194;\red0\green0\blue0;\red243\green164\blue71;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\widctlpar\f0\fs24\lang1049 "\cf1 Display Conversation Only Once\cf0 " -- Uncheck this if you want the convo to play multiple times (i.e. for a group of barks you want to have play over and over).\par
\par
"\cf2 DataLink Conversation\cf0 " -- Use this to specify that this conversation should play as an "Infolink"\f1\lang1033 .\par
\f0\lang1049\par
"\cf3 Non-interactive Conversation\cf0 " and "\cf4 Remain in First-Person Mode\cf0 " \_- check BOTH of these boxes to create a "\cf5 non-blocking\cf0 " conversation, one that plays in PoV mode without stopping the game (i.e. barks and overheard conversations).  Checking only one or the other of these fields doesn't make much sense and isn't very useful.  By checking NEITHER of these fields, you can create a cinematic conversation that will stop the game and let you set camera-angles.\par
\par
"\cf6 Absolutely CANNOT be interrupted by another conversation\cf0 " -- This does what it says, but due to last-minute engine-tweaks the "\cf7 Can Be Interrupted by Another Conversation\cf0 " doesn't do anything.  By default, all Deus Ex conversations can be \cf8 interrupted.\par
\par
"\cf9 Random Camera Placement\cf8 " -- We didn't use this in the game, and in fact it was never fully implemented.\par

\pard\sa200\sl276\slmult1\cf0\f2\fs22\lang9\par
}
    �  0   ��
 E M P T Y H E L P                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1058{\fonttbl{\f0\fnil\fcharset0 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Consolas;}{\f2\fnil\fcharset204 Lucida Sans Unicode;}{\f3\fnil\fcharset0 Calibri;}}
{\colortbl ;\red155\green0\blue211;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\widctlpar\f0\fs24\lang1033 ToDo: add help resources for this case (\cf1\f1 C:\\Lang\\DelphiProjects\\ConvEditor\\HelpResources.res\cf0\f0 )!\f2\lang1049\par

\pard\sa200\sl276\slmult1\f3\fs22\lang9\par
}
  �  $   ��
 E N D                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 End\b0  -- Ends a conversation.  It's like an exit() command in a C program.  A conversation can have multiple end-points.\f1\lang1033\par
}
   Z  (   ��
 J U M P                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red0\green176\blue80;\red155\green0\blue211;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Jump\b0  -- Jumps to a particular label.  \par
In addition to the "\cf1 Jump to Label\cf0 " field, there is a "\cf2 Conversation\cf0 " field, which means that this event can perform a jump into another conversation.\par
\f1\lang1033\par
}
   �  4   ��
 M O V E C A M E R A                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Calibri;}{\f2\fnil\fcharset204 Calibri;}}
{\colortbl ;\red155\green0\blue211;\red0\green176\blue80;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Move Camera\b0  -- This event lets you specify a particular camera-angle.  The only field guaranteed to do anything is the "\cf1 Predefined Camera Angle\cf0 " field, which contains a list of standard camera-angles like close-ups and shoulder-shots.  The engine will try to use the angle you specify, but if the camera collides with a wall the camera will be moved to a "\cf2 fallback\cf0 " position.  Camera transitions, positioning, and random placement have not been implemented.\par

\pard\sa200\sl276\slmult1\f1\fs22\lang1033\par
\par
\fs24 ToDo: Translate this note into English!\f2\lang1049\line\'cf\'f0\'e8\'ec\'e5\'f7\'e0\'ed\'e8\'e5\f1\lang1033 : Random Camera Position \f2\lang1049\'e2\'f1\'b8-\'e6\'e5 \'f0\'e0\'e1\'ee\'f2\'e0\'e5\'f2, \'e8\'f1\'ef\'ee\'eb\'fc\'e7\'f3\'e5\'f2\'f1\'ff \'ed\'e0\'ef\'f0\'e8\'ec\'e5\'f0 \'e2 \f1\lang1033 RedSun 2020.\par
\fs22\par
}
    ?  D   ��
 C O N V P R O P E R T I E S F L A G S                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049{\fonttbl{\f0\fmodern\fprq1\fcharset0 Courier New;}{\f1\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs24\lang1033 Optionally, you may want a conversation to trigger only during a particular game-state.  \par
To do this, use the Flags tab to add a list of flag-names.  All flags in Deus Ex are Boolean, so you can only check for True and False.  By double-clicking on a flag in the list, you can toggle the check between True and False.\f1\fs22\lang9\par
}
  l  H   ��
 C O N V P R O P E R T I E S G E N E R A L                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049{\fonttbl{\f0\fmodern\fprq1\fcharset0 Courier New;}{\f1\fnil\fprq2\fcharset2 Wingdings;}{\f2\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\widctlpar\f0\fs24\lang1033 Each conversation has an "Owner," which roughly corresponds to the NPC in the world who will be the speaker and/or trigger of the conversation.  \par
You define the owner in the "Conversation Owner" field of the Conversation Properties dialog box, which appears when you create a new conversation (Conversation \f1\'e0\f0  Add Conversation).  The value you enter in this field must be an FName and must match up to the "conversation bindname" of an NPC in the world.\par
Each conversation also has a "conversation name," which like the NPC bindname is an FName.\par

\pard\sa200\sl276\slmult1\f2\fs22\lang9\par
}
   8   ��
 P L A Y A N I M A T I O N                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Calibri;}{\f2\fnil\fcharset204 Calibri;}}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Play Animation\b0  -- not implemented.\par

\pard\sa200\sl276\slmult1\f1\fs22\lang1033\par
\par
\fs24 ToDo: Translate this note into English!\f2\lang1049\line\'cf\'f0\'e8\'ec\'e5\'f7\'e0\'ed\'e8\'e5\f1\lang1033 : \f2\lang1049\'ed\'e0\'f1\'ea\'ee\'eb\'fc\'ea\'ee \'ff \'e7\'ed\'e0\'fe, \'fd\'f2\'ee \'e4\'e5\'e9\'f1\'f2\'e2\'e8\'e5 \'e1\'fb\'eb\'ee \'f0\'e5\'e0\'eb\'e8\'e7\'ee\'e2\'e0\'ed\'ee \'e2 \f1\lang1033 The Nameless Mod.\par
\fs22\par
}
   �  ,   ��
 R A N D O M                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red155\green0\blue211;\red0\green77\blue187;\red192\green80\blue77;\red75\green172\blue198;\red209\green99\blue73;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Random\b0  -- A very useful event for barks.  The Random event contains a list of labels from the current conversation.  \par
By default, it randomly jumps to one of these labels every time it is executed.  \par
Alternately, you can click the "\cf1 Cycle Events\cf0 " box, which will make the Random event jump to the labels in sequence: it will "\cf2 cycle\cf0 " through them indefinitely.  \par
Cycling through barks can be useful for giving an NPC a train of thought without stopping the game with a cinematic.  \par
There are two additional options for cycling.  \par
(1) "\cf3 Only Cycle Once\cf0 " -- cycles through the labels once, repeating the last one indefinitely.  \par
(2) "\cf4 Random after Cycle\cf0 " -- cycles through the labels once, then jumps to them randomly thereafter.  \par
ConEdit lets you check the boxes for both of these options at the same time, but obviously the behavior will be undefined if you do that.  \par
A good way to use Random events is to have one at the beginning of a bark-conversation and one at the end.  \par
The one at the beginning can "\cf5 cycle only once\cf0 " through a specific train of thought, ending with the label attached to the second Random event.  \par
The second Random event can be completely random and contain only labels for a few generic barks.  \par
In this way, an NPC can dump a bunch of information on the player, then end up in a randomized but steady state at the end.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
  �  0   ��
 S E T F L A G S                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red0\green77\blue187;\red155\green0\blue211;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Set Flag\f1\lang1033 s\b0\f0\lang1049  -- Sets the values of one or more flags.  Use the "\cf1 Add Flag\cf0 " button to bring up a list of available flags.  If the flag you want to set is not in the list, click the "\cf2 Edit Flags\cf0 " button to add a new flag-name to the table, then return to the Flag List dialog and double-click on the flag you just added.  Back in the main Properties window, you can double-click on a flag to toggle whether its value should be true or false.\par

\pard\sa200\sl276\slmult1\f1\lang1033\par
}
 -�  ,   ��
 S P E E C H                     {\rtf1\adeflang1025\ansi\ansicpg1251\uc1\adeff0\deff0\stshfdbch31506\stshfloch31506\stshfhich31506\stshfbi31507\deflang1049\deflangfe1049\themelang1049\themelangfe0\themelangcs0{\fonttbl{\f0\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}
{\f34\fbidi \froman\fcharset204\fprq2{\*\panose 02040503050406030204}Cambria Math;}{\f76\fbidi \fswiss\fcharset204\fprq2{\*\panose 020b0602030504020204}Lucida Sans Unicode;}
{\flomajor\f31500\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\fdbmajor\f31501\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}
{\fhimajor\f31502\fbidi \froman\fcharset204\fprq2{\*\panose 02040503050406030204}Cambria;}{\fbimajor\f31503\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}
{\flominor\f31504\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\fdbminor\f31505\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}
{\fhiminor\f31506\fbidi \fswiss\fcharset204\fprq2{\*\panose 020f0502020204030204}Calibri;}{\fbiminor\f31507\fbidi \froman\fcharset204\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f272\fbidi \froman\fcharset0\fprq2 Times New Roman;}
{\f270\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\f273\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\f274\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\f275\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}
{\f276\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\f277\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\f278\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\f612\fbidi \froman\fcharset0\fprq2 Cambria Math;}
{\f610\fbidi \froman\fcharset238\fprq2 Cambria Math CE;}{\f613\fbidi \froman\fcharset161\fprq2 Cambria Math Greek;}{\f614\fbidi \froman\fcharset162\fprq2 Cambria Math Tur;}{\f617\fbidi \froman\fcharset186\fprq2 Cambria Math Baltic;}
{\f618\fbidi \froman\fcharset163\fprq2 Cambria Math (Vietnamese);}{\f1032\fbidi \fswiss\fcharset0\fprq2 Lucida Sans Unicode;}{\f1030\fbidi \fswiss\fcharset238\fprq2 Lucida Sans Unicode CE;}
{\f1033\fbidi \fswiss\fcharset161\fprq2 Lucida Sans Unicode Greek;}{\f1034\fbidi \fswiss\fcharset162\fprq2 Lucida Sans Unicode Tur;}{\f1035\fbidi \fswiss\fcharset177\fprq2 Lucida Sans Unicode (Hebrew);}
{\f1037\fbidi \fswiss\fcharset186\fprq2 Lucida Sans Unicode Baltic;}{\flomajor\f31510\fbidi \froman\fcharset0\fprq2 Times New Roman;}{\flomajor\f31508\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}
{\flomajor\f31511\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\flomajor\f31512\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flomajor\f31513\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}
{\flomajor\f31514\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flomajor\f31515\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\flomajor\f31516\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}
{\fdbmajor\f31520\fbidi \froman\fcharset0\fprq2 Times New Roman;}{\fdbmajor\f31518\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbmajor\f31521\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}
{\fdbmajor\f31522\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbmajor\f31523\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbmajor\f31524\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}
{\fdbmajor\f31525\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\fdbmajor\f31526\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhimajor\f31530\fbidi \froman\fcharset0\fprq2 Cambria;}
{\fhimajor\f31528\fbidi \froman\fcharset238\fprq2 Cambria CE;}{\fhimajor\f31531\fbidi \froman\fcharset161\fprq2 Cambria Greek;}{\fhimajor\f31532\fbidi \froman\fcharset162\fprq2 Cambria Tur;}
{\fhimajor\f31535\fbidi \froman\fcharset186\fprq2 Cambria Baltic;}{\fhimajor\f31536\fbidi \froman\fcharset163\fprq2 Cambria (Vietnamese);}{\fbimajor\f31540\fbidi \froman\fcharset0\fprq2 Times New Roman;}
{\fbimajor\f31538\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fbimajor\f31541\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\fbimajor\f31542\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}
{\fbimajor\f31543\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fbimajor\f31544\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbimajor\f31545\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}
{\fbimajor\f31546\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\flominor\f31550\fbidi \froman\fcharset0\fprq2 Times New Roman;}{\flominor\f31548\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}
{\flominor\f31551\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\flominor\f31552\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flominor\f31553\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}
{\flominor\f31554\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flominor\f31555\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\flominor\f31556\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}
{\fdbminor\f31560\fbidi \froman\fcharset0\fprq2 Times New Roman;}{\fdbminor\f31558\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbminor\f31561\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}
{\fdbminor\f31562\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbminor\f31563\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbminor\f31564\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}
{\fdbminor\f31565\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\fdbminor\f31566\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhiminor\f31570\fbidi \fswiss\fcharset0\fprq2 Calibri;}
{\fhiminor\f31568\fbidi \fswiss\fcharset238\fprq2 Calibri CE;}{\fhiminor\f31571\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\fhiminor\f31572\fbidi \fswiss\fcharset162\fprq2 Calibri Tur;}
{\fhiminor\f31573\fbidi \fswiss\fcharset177\fprq2 Calibri (Hebrew);}{\fhiminor\f31574\fbidi \fswiss\fcharset178\fprq2 Calibri (Arabic);}{\fhiminor\f31575\fbidi \fswiss\fcharset186\fprq2 Calibri Baltic;}
{\fhiminor\f31576\fbidi \fswiss\fcharset163\fprq2 Calibri (Vietnamese);}{\fbiminor\f31580\fbidi \froman\fcharset0\fprq2 Times New Roman;}{\fbiminor\f31578\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}
{\fbiminor\f31581\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\fbiminor\f31582\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fbiminor\f31583\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}
{\fbiminor\f31584\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbiminor\f31585\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\fbiminor\f31586\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}}
{\colortbl;\red0\green0\blue0;\red0\green0\blue255;\red0\green255\blue255;\red0\green255\blue0;\red255\green0\blue255;\red255\green0\blue0;\red255\green255\blue0;\red255\green255\blue255;\red0\green0\blue128;\red0\green128\blue128;\red0\green128\blue0;
\red128\green0\blue128;\red128\green0\blue0;\red128\green128\blue0;\red128\green128\blue128;\red192\green192\blue192;\red192\green0\blue0;\red0\green176\blue80;\red0\green112\blue192;}{\*\defchp \f31506\fs22\lang1049\langfe1033\langfenp1033 }{\*\defpap 
\ql \li0\ri0\sa200\sl276\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 }\noqfpromote {\stylesheet{\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af0\afs24\alang1025 
\ltrch\fcs0 \fs24\lang1033\langfe1033\cgrid\langnp1033\langfenp1033 \snext0 \sqformat \spriority0 \styrsid7426334 Normal;}{\*\cs10 \additive \ssemihidden \sunhideused \spriority1 Default Paragraph Font;}{\*
\ts11\tsrowd\trftsWidthB3\trpaddl108\trpaddr108\trpaddfl3\trpaddft3\trpaddfb3\trpaddfr3\trcbpat1\trcfpat1\tblind0\tblindtype3\tscellwidthfts0\tsvertalt\tsbrdrt\tsbrdrl\tsbrdrb\tsbrdrr\tsbrdrdgl\tsbrdrdgr\tsbrdrh\tsbrdrv \ql \li0\ri0\sa200\sl276\slmult1
\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\afs22\alang1025 \ltrch\fcs0 \f31506\fs22\lang1049\langfe1033\cgrid\langnp1049\langfenp1033 \snext11 \ssemihidden \sunhideused \sqformat Normal Table;}}
{\*\rsidtbl \rsid7426334\rsid16015583}{\mmathPr\mmathFont34\mbrkBin0\mbrkBinSub0\msmallFrac0\mdispDef1\mlMargin0\mrMargin0\mdefJc1\mwrapIndent1440\mintLim0\mnaryLim1}{\info{\author \'cf\'ee\'eb\'fc\'e7\'ee\'e2\'e0\'f2\'e5\'eb\'fc Windows}
{\operator \'cf\'ee\'eb\'fc\'e7\'ee\'e2\'e0\'f2\'e5\'eb\'fc Windows}{\creatim\yr2023\mo7\dy24\hr21\min54}{\revtim\yr2023\mo7\dy24\hr21\min58}{\version1}{\edmins4}{\nofpages1}{\nofwords64}{\nofchars366}{\nofcharsws429}{\vern32775}}{\*\xmlnstbl {\xmlns1 htt
p://schemas.microsoft.com/office/word/2003/wordml}}\paperw11906\paperh16838\margl1701\margr850\margt1134\margb1134\gutter0\ltrsect 
\deftab708\widowctrl\ftnbj\aenddoc\trackmoves1\trackformatting1\donotembedsysfont1\relyonvml0\donotembedlingdata0\grfdocevents0\validatexml1\showplaceholdtext0\ignoremixedcontent0\saveinvalidxml0\showxmlerrors1
\noxlattoyen\expshrtn\noultrlspc\dntblnsbdb\nospaceforul\formshade\horzdoc\dgmargin\dghspace180\dgvspace180\dghorigin150\dgvorigin0\dghshow1\dgvshow1
\jexpand\viewkind5\viewscale100\pgbrdrhead\pgbrdrfoot\splytwnine\ftnlytwnine\htmautsp\nolnhtadjtbl\useltbaln\alntblind\lytcalctblwd\lyttblrtgr\lnbrkrule\nobrkwrptbl\snaptogridincell\allowfieldendsel\wrppunct
\asianbrkrule\rsidroot7426334\newtblstyruls\nogrowautofit\usenormstyforlist\noindnmbrts\felnbrelev\nocxsptable\indrlsweleven\noafcnsttbl\afelev\utinl\hwelev\spltpgpar\notcvasp\notbrkcnstfrctbl\notvatxbx\krnprsnet\cachedcolbal \nouicompat \fet0
{\*\wgrffmtfilter 2450}\nofeaturethrottle1\ilfomacatclnup0\ltrpar \sectd \ltrsect\linex0\headery708\footery708\colsx708\endnhere\sectlinegrid360\sectdefaultcl\sectrsid16015583\sftnbj {\*\pnseclvl1\pnucrm\pnstart1\pnindent720\pnhang {\pntxta .}}
{\*\pnseclvl2\pnucltr\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl3\pndec\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang {\pntxta )}}{\*\pnseclvl5\pndec\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}
{\*\pnseclvl6\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl7\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl9
\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}\pard\plain \ltrpar\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0\pararsid7426334 \rtlch\fcs1 \af0\afs24\alang1025 \ltrch\fcs0 
\fs24\lang1033\langfe1033\cgrid\langnp1033\langfenp1033 {\rtlch\fcs1 \ab\af76 \ltrch\fcs0 \b\f76\insrsid7426334\charrsid7426334 Speech}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334  -- All dialogue is contained inside Speech events.  
}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 
\par }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334 The }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 "}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\cf17\insrsid7426334\charrsid7426334 Actor to Speak}{\rtlch\fcs1 \af76 \ltrch\fcs0 
\f76\insrsid7426334\charrsid7426334 "}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 ,}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334  "}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\cf18\insrsid7426334\charrsid7426334 Speaking To}{
\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334 "}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 ,}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334  and "}{\rtlch\fcs1 \af76 \ltrch\fcs0 
\f76\cf19\insrsid7426334\charrsid7426334 Speech}{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334 " fields must all be defined for each line of dialogue.  }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 
\par }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334 The first two contain BindNames of NPCs (or "JCDenton"), while the Speech field contains the text of the line to be spoken.  }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334 
\par }{\rtlch\fcs1 \af76 \ltrch\fcs0 \f76\insrsid7426334\charrsid7426334 An audio file can also be specified, but since audio filenames are generated automatically, you probably shouldn't mess with this field.
\par }\pard \ltrpar\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 {\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid16015583 
\par }{\*\themedata 504b030414000600080000002100828abc13fa0000001c020000130000005b436f6e74656e745f54797065735d2e786d6cac91cb6ac3301045f785fe83d0b6d8
72ba28a5d8cea249777d2cd20f18e4b12d6a8f843409c9df77ecb850ba082d74231062ce997b55ae8fe3a00e1893f354e9555e6885647de3a8abf4fbee29bbd7
2a3150038327acf409935ed7d757e5ee14302999a654e99e393c18936c8f23a4dc072479697d1c81e51a3b13c07e4087e6b628ee8cf5c4489cf1c4d075f92a0b
44d7a07a83c82f308ac7b0a0f0fbf90c2480980b58abc733615aa2d210c2e02cb04430076a7ee833dfb6ce62e3ed7e14693e8317d8cd0433bf5c60f53fea2fe7
065bd80facb647e9e25c7fc421fd2ddb526b2e9373fed4bb902e182e97b7b461e6bfad3f010000ffff0300504b030414000600080000002100a5d6a7e7c00000
00360100000b0000005f72656c732f2e72656c73848fcf6ac3300c87ef85bd83d17d51d2c31825762fa590432fa37d00e1287f68221bdb1bebdb4fc7060abb08
84a4eff7a93dfeae8bf9e194e720169aaa06c3e2433fcb68e1763dbf7f82c985a4a725085b787086a37bdbb55fbc50d1a33ccd311ba548b63095120f88d94fbc
52ae4264d1c910d24a45db3462247fa791715fd71f989e19e0364cd3f51652d73760ae8fa8c9ffb3c330cc9e4fc17faf2ce545046e37944c69e462a1a82fe353
bd90a865aad41ed0b5b8f9d6fd010000ffff0300504b0304140006000800000021006b799616830000008a0000001c0000007468656d652f7468656d652f7468
656d654d616e616765722e786d6c0ccc4d0ac3201040e17da17790d93763bb284562b2cbaebbf600439c1a41c7a0d29fdbd7e5e38337cedf14d59b4b0d592c9c
070d8a65cd2e88b7f07c2ca71ba8da481cc52c6ce1c715e6e97818c9b48d13df49c873517d23d59085adb5dd20d6b52bd521ef2cdd5eb9246a3d8b4757e8d3f7
29e245eb2b260a0238fd010000ffff0300504b030414000600080000002100a0bc18c6b5060000831b0000160000007468656d652f7468656d652f7468656d65
312e786d6cec59cf6e1b4518bf23f10ea3bdb7b1133b8da33855ecd80db469a3d82dea71bc1eef4e33bbb39a1927f5ad4a8f482044411ca8045c382020528bb8
b4efe03e43a0088ad457e09b995d7b27de90a48da082e6107b677fdfff3ff3cd78e5f2dd88a15d2224e571dd2b5f2c7988c43eefd338a87b37bbed0b4b1e920a
c77dcc784ceade8848eff2eabbeface06515928820a08fe532ae7ba152c9f2dc9cf46119cb8b3c2131bc1b701161058f2298eb0bbc077c2336375f2a2dce4598
c61e8a71046cc7df8c7f1a3f191fa01b8301f589b79af16f3110122ba9177c263a9a3bc988be7eb63f3e183f1d3f1e1f3cbb07df9fc2e7c786b6bf53d6147224
9b4ca05dccea1e88eef3bd2eb9ab3cc4b054f0a2ee95cc9f37b7ba3287975322a68ea1cdd1b5cd5f4a9712f477e68d4c11f42642cbed4aedd2fa84bf0130358b
6bb55acd5679c2cf00b0ef83e556973ccf4a7ba9dcc878e640f6eb2cef66a95aaab8f81cff85199d6b8d46a35a4b75b14c0dc87eadcce0974a8b95b579076f40
165f9dc1571a6bcde6a28337208b5f9cc1b72fd5162b2ede804246e39d19b40e68bb9d729f40069c6d14c29700be544ae1531464c324dbb488018fd569732fc2
77b8680381266458d118a9514206d887446fe2a82728d602f132c1b93776c997334b5a3692bea089aa7bef27188a66caefe593ef5f3e79840ef71f1feeff7c78
fffee1fe8f969143b581e3204ff5e2db4ffe7c780ffdf1e8ab170f3e2bc6cb3cfed71f3efce5e9a7c54028a7a93acf3f3ff8edf1c1f32f3efafdbb0705f03581
7b7978974644a2eb640f6df3080c335e7135273d71368a6e88699e622d0e248eb19652c0bfa542077d7d84591a1d478f06713d784b403b29025e19de7114ee84
62a86881e4ab61e4003739670d2e0abd7055cbcab9b93b8c8362e16298c76d63bc5b24bb896327bead61027d354b4bc7f066481c35b7188e150e484c14d2eff8
0e2105d6dda6d4f1eb26f505977ca0d06d8a1a9816baa44b7b4e364d89366804711915d90cf1767cb3790b35382bb27a9decba48a80acc0a94ef12e6b8f10a1e
2a1c15b1ece288e51d7e0dabb048c9ce48f8795c4b2a8874401847ad3e91b288e686007b7341bf8aa18315867d938d22172914dd29e2790d739e47aef39d6688
a3a408dba17198c7be2777204531dae2aa08bec9dd0ad1cf10071c1f1bee5b9438e13eb91bdca481a3d23441f49ba1d0b184d6ed74e088c67fd78e19857e6c73
e0fcda3134c0e75f3e2cc8ac37b511afc19e5454091b47daef71b8a34db7c9459fbef93d771d0fe32d02693ebbf1bc6db96f5baef79f6fb9c7d5f3691bedb4b7
42dbd573831d92cdc81c9d7a621e50c63a6ac4c83569866609fb46bf0d8b9a8f395092c9892a09e16bdae71d5c20b0a14182ab0fa80a3b214e60e02e7b9a4920
53d68144099770f033cb85bc351e8676658f8d557da0b0fd4162b5c9fb7679412f67e786091bb3fb04e6b09a095ad00c4e2b6ce152ca14cc7e156165add4a9a5
958d6aa6f539d22626434c674d83c5893761204130c6809717e148af45c3410533d2d77eb77b7116161385f30c910c719fa431d276cfc6a86c8294e58ab93980
dc2988913e049ee0b59cb49a66fb1ad24e13a4bcb8ca31e2b2e8bd4e94b20c9e4649d7f191726471be38598cf6ea5ead3a5ff5908f93ba3780332e7c8d1288ba
d433206601dc25f94ad8b43fb1984d954fa359cb0c738ba00cd718d6ef33063b7d201152ad6319dad430afd21460b19664f59faf825bcfcb009be9afa0c5c212
24c3bfa605f8d10d2d190c88aff2c1cead68dfd9c7b495f2a122a213f6f7508f0dc53686f0eb54057bfa54c25585e908fa01eed9b4b7cd2bb739a74597bfdd32
38bb8e5912e2b4ddea12cd2ad9c24d1d4f74304f39f5c0b642dd8d716737c594fc3999924fe3ff99297a3f819b8385be8e800f37bf02235daf758f0b1572e842
4948fdb68041c2f40ec816b8ab85d7905470ff6c3e05d9d59fb6e62c0f53d6700054db344082c27ea44241c816b425937d27302ba77b9765c9524626a372eaca
c4aadd23bb8475750f5cd47bbb87424875d34dd236607047f3cf7d4e2ba817e821275f6f4e0f99ecbdb606fee9c9c7163318e5f66133d064fe9fa858b0ab5a7a
439eedbd7943f48be99855c9aa0284e5b6825a5af6afa8c219b75adbb1662c9eaf66ca4114672d86c5c94094c0fd0fd2ff60ffa3c267f6970cbda176f936f456
043f446866903690d517ece0817483b48b3d189ceca24d26cdcaba361d9db4d7b2cdfa9c27dd89dc23ced69a9d26de6774f6643873c539b5789ece4e3decf8da
ae1deb6a88ecd11285a54176b0318131bf82e57fa5e2bd3b10e875b8ef1f32254d32c16f4e02c3e8d9317500c56f251ad2d5bf000000ffff0300504b03041400
06000800000021000dd1909fb60000001b010000270000007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c7384
8f4d0ac2301484f78277086f6fd3ba109126dd88d0add40384e4350d363f2451eced0dae2c082e8761be9969bb979dc9136332de3168aa1a083ae995719ac16d
b8ec8e4052164e89d93b64b060828e6f37ed1567914b284d262452282e3198720e274a939cd08a54f980ae38a38f56e422a3a641c8bbd048f7757da0f19b017c
c524bd62107bd5001996509affb3fd381a89672f1f165dfe514173d9850528a2c6cce0239baa4c04ca5bbabac4df000000ffff0300504b01022d001400060008
0000002100828abc13fa0000001c0200001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014000600
080000002100a5d6a7e7c0000000360100000b000000000000000000000000002b0100005f72656c732f2e72656c73504b01022d00140006000800000021006b
799616830000008a0000001c00000000000000000000000000140200007468656d652f7468656d652f7468656d654d616e616765722e786d6c504b01022d0014
000600080000002100a0bc18c6b5060000831b00001600000000000000000000000000d10200007468656d652f7468656d652f7468656d65312e786d6c504b01
022d00140006000800000021000dd1909fb60000001b0100002700000000000000000000000000ba0900007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c73504b050600000000050005005d010000b50a00000000}
{\*\colorschememapping 3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d3822207374616e64616c6f6e653d22796573223f3e0d0a3c613a636c724d
617020786d6c6e733a613d22687474703a2f2f736368656d61732e6f70656e786d6c666f726d6174732e6f72672f64726177696e676d6c2f323030362f6d6169
6e22206267313d226c743122207478313d22646b3122206267323d226c743222207478323d22646b322220616363656e74313d22616363656e74312220616363
656e74323d22616363656e74322220616363656e74333d22616363656e74332220616363656e74343d22616363656e74342220616363656e74353d22616363656e74352220616363656e74363d22616363656e74362220686c696e6b3d22686c696e6b2220666f6c486c696e6b3d22666f6c486c696e6b222f3e}
{\*\latentstyles\lsdstimax267\lsdlockeddef0\lsdsemihiddendef1\lsdunhideuseddef1\lsdqformatdef0\lsdprioritydef99{\lsdlockedexcept \lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority0 \lsdlocked0 Normal;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 1;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 2;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 3;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 4;
\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 5;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 6;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 7;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 8;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 9;
\lsdpriority39 \lsdlocked0 toc 1;\lsdpriority39 \lsdlocked0 toc 2;\lsdpriority39 \lsdlocked0 toc 3;\lsdpriority39 \lsdlocked0 toc 4;\lsdpriority39 \lsdlocked0 toc 5;\lsdpriority39 \lsdlocked0 toc 6;\lsdpriority39 \lsdlocked0 toc 7;
\lsdpriority39 \lsdlocked0 toc 8;\lsdpriority39 \lsdlocked0 toc 9;\lsdqformat1 \lsdpriority35 \lsdlocked0 caption;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority10 \lsdlocked0 Title;\lsdpriority1 \lsdlocked0 Default Paragraph Font;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority11 \lsdlocked0 Subtitle;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority22 \lsdlocked0 Strong;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority20 \lsdlocked0 Emphasis;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority59 \lsdlocked0 Table Grid;\lsdunhideused0 \lsdlocked0 Placeholder Text;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority1 \lsdlocked0 No Spacing;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 1;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 1;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 1;\lsdunhideused0 \lsdlocked0 Revision;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority34 \lsdlocked0 List Paragraph;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority29 \lsdlocked0 Quote;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority30 \lsdlocked0 Intense Quote;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 1;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 1;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 2;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 3;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 3;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 3;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 3;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 3;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 4;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 4;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 4;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 4;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 5;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 5;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 5;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 5;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 5;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 6;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 6;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 6;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 6;
\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 6;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority19 \lsdlocked0 Subtle Emphasis;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority21 \lsdlocked0 Intense Emphasis;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority31 \lsdlocked0 Subtle Reference;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority32 \lsdlocked0 Intense Reference;
\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority33 \lsdlocked0 Book Title;\lsdpriority37 \lsdlocked0 Bibliography;\lsdqformat1 \lsdpriority39 \lsdlocked0 TOC Heading;}}{\*\datastore 010500000200000018000000
4d73786d6c322e534158584d4c5265616465722e352e3000000000000000000000060000
d0cf11e0a1b11ae1000000000000000000000000000000003e000300feff090006000000000000000000000001000000010000000000000000100000feffffff00000000feffffff0000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
fffffffffffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffffffffffffec69d9888b8b3d4c859eaf6cd158be0f00000000000000000000000030d6
91902ebed901feffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000105000000000000}}   �  <   ��
 T R A N S F E R O B J E C T                     {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fcharset0 Lucida Sans Unicode;}}
{\colortbl ;\red0\green0\blue0;\red0\green77\blue187;\red155\green0\blue211;\red255\green255\blue0;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Transfer Object\b0  -- Transfers an object from the player to an NPC or vice-versa.  \par
You ca\cf1 n also trans\cf0 fer items between NPCs, if you want to get creative.  \par
You can select the object to transfer from a pull-down menu, or you can type the name of an object that isn't in the table.  \par
By clicking on another field, you'll automatically be asked whether or not to add a new object to the table.  \par
Usually, you only want to transfer one object, but in the case of grenades, multi-tools, lockpicks, and other "\cf2 stackable\cf0 " items, you can specify that more than one be transferred at a time.  \par
This feature was added to fix various bugs, so if you want to transfer 6 grenades to the player, do it with one event.  \par
However, \ul don't try to transfer multiple pistols at the same time\ulnone  -- they aren't stackable.  \par
Now... in case you thought buy/sell/trade was going to be fun, notice the "\cf3 On Fail Jump To\cf0 " field at the bottom of the Properties dialog.  \par
You'll need to use this field to specify a label where the conversation can jump when the player's inventory is full.  \par
Transfers won't fail for any other reason, because if you try to transfer an object that doesn't exist the engine will automatically instantiate it.  \par
\highlight4 Whenever you want an NPC to give the player something, you'll have to create an intermediate conversation-branch for when the transfer fails and the player has to drop stuff and then re-initiate the conversation.\par

\pard\sa200\sl276\slmult1\highlight0\f1\lang1033\par
}
  b  ,   ��
 T R I G G E R                   {\rtf1\ansi\ansicpg1251\deff0\nouicompat\deflang1049\deflangfe1049\deftab708{\fonttbl{\f0\fnil\fcharset204 Lucida Sans Unicode;}{\f1\fnil\fprq2\fcharset2 Wingdings;}{\f2\fnil\fcharset0 Lucida Sans Unicode;}{\f3\fnil\fcharset0 Calibri;}}
{\colortbl ;\red255\green255\blue0;\red155\green0\blue211;\red0\green0\blue255;}
{\*\generator Riched20 10.0.19041}{\*\mmathPr\mnaryLim0\mdispDef1\mwrapIndent1440 }\viewkind4\uc1 
\pard\widctlpar\b\f0\fs24 Trigger\b0  -- This event simply launches a trigger that has an \highlight1 Event\highlight0  \f1\'e0\f0  \highlight1 Tag\highlight0  property that matches the value you put in the field "\cf2 Trigger Tag\cf0 "\f2\lang1033 .\f0\lang1049   \par
\ul The Trigger event is reliable only when it comes at the very end of a conversation\ulnone .  \par
It's useful for launching Orders triggers, unlocking doors, changing the alliance of NPCs; etc.   \par
For more on adding triggers to a map, see the {{\field{\*\fldinst{HYPERLINK "Editor Documentation.doc" }}{\fldrslt{\ul\cf3\cf3\ul Editor Documentation}}}}\f0\fs24 .\par

\pard\sa200\sl276\slmult1\f3\fs22\lang1033\par
}
   
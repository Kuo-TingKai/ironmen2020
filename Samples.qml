SQLite format 3   @        
                           
    QM2                         -�   � q�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ��{tabletextstextsCREATE TABLE texts(id INTEGER PRIMARY KEY REFERENCES items(id) ON DELETE CASCADE ON UPDATE CASCADE,date BLOB,text TEXT)��wtableitemsitemsCREATE TABLE items(id INTEGER PRIMARY KEY,pid INT,ord BLOB,flags INT,name TEXT,[trigger] TEXT,icon TEXT,td,guid BLOB)    � ��y?��w?���, �                                                                                                                                                                                                                       -
 '   ,   Download more~�Õ�=C���=�f��R
 )U  ,   Sticky Toolbar!a"* Notepad" "Notepad" "" "" "" 0x2��LW17D��va��-
 !  ,   NextWindow#<2B]O����O�Pf,�2&6
 7   ,   Sample_GetCurrentDate�h[?�H��.�P!�-

 %   , 
  Sample_AddAB��gYr N�gPCO蜹'	
    , 	  Caller�����@���K]�)�6
 9   ,  User-defined functions���a1�4L�u*���?.
 )   ,   All in toolbar.��۔=�A�X�F�j�/
 #  ,   Sample menu##^2�_2���N���2�c�3
 3   ,   String manipulationK>`�QaL����qnP0
 -   ,   Window functions:�3`d�L��;�7$��8
 =   ,   Mouse, variables, repeat��O[�(DM�g���<�:
 A   ,   Text, keys, wait, messagesy�c����@�X���|%
    ,   About�_�s��?E�P4���0�" 
     ,  file                   �    
������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             	                   �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           �h �C�DS���� Macros in this folder can be useful for learning.
 You can delete this folder or some macros.
 Triggers are disabled. To enable, right click the folder and click Enable.

 Tips:
 Open a macro and click the A button or menu Help -> Annotations (Shift+F1).
 It shows short descriptions of commands/functions in the code editor.
 Click a command/function in the code editor. It shows more info in the status bar.
 Click a command/function and press F1. It shows Help.
              �  �                                                                                                                                                                       �L ��TM�z_ Run Notepad
run "notepad.exe"
 Wait for Notepad window max 5 s
wait 5 WA "Notepad"
 Wait 0.5 s
0.5
 Keys (type text, then press Enter)
key "This is simple text, typed using the keyboard." Y
 Create string variable t
str t
 Show input box (t will receive text)
inp- t "Type something:"
 Paste formatted text
paste "Pasted using the clipboard:[]	''%s''.[]" t ;;here %s is replaced with the value of t;  [] and '' can be used instead of newline and " in any string
 Show message box with buttons Yes and No
if mes("Delete text?" "" "YN?")='Y'
	 If Yes, press keys Alt+e+a and Alt+e+l
	key A{ea} A{el}
	 Ask to close
	if mes("Close Notepad?" "" "YN?")='Y'
		 Close active window
		clo

 Lines that begin with space (green text) are not executed and can be used for comments or to temporarily disable commands.
   E �E                                                                                                                                                                                                                                                                                                                         �h �C��PvOnScreenDisplay "Run Notepad" 1 0 0 0 0 0 2
run "notepad.exe"
1
int w1=win(" - Notepad" "Notepad") ;;get window handle
OnScreenDisplay "Activate next window" 1 0 0 0 0 0 2
act
1
OnScreenDisplay "Activate Notepad" 1 0 0 0 0 0 2
act w1
1
OnScreenDisplay "Close" 1 0 0 0 0 0 2
clo w1

 Tip: Press the A button to show/hide annotations.
�M ������� Create integer variable h and get QM code edit control handle
int h = id(2210 "Quick Macros")
 Create integer variable y and assign 10
int y = 10
 Click 5 times, each time adding 16 to y
rep 5
	lef 50 y h
	0.5 ;;wait 0.5 s
	y + 16
 Select text
lef+ 20 15 h
lef- 20 80 h
 Restore mouse cursor position
mou
                                                                                                                                                                                                                                                                                 �f �?щ�tv�k run Notepad and type some text
run "notepad.exe" "" "" "" 0x2800 "Notepad"
key "soMe teXt" YY  ;; "soMe teXt" Enter Enter
1 ;;wait 1 s

 create variables
str s s2 s3 s4 ;;4 string variables
int i ;;integer variable
ARRAY(str) a ;;array of strings

 select text and split into words
key A{ea} ;; Alt+{E A}  (select all)
s.getsel ;;store selected text into variable s
key CE ;; Ctrl+End  (move text cursor to the end)
tok s a ;;split, and store words into array a

 repeat for each word
for i 0 a.len
	s2.left(a[i] 1) ;;get first character into s2
	s3.get(a[i] 1) ;;get remaining part into s3
	s2.ucase ;;make uppercase
	s3.lcase ;;make lowercase
	s4.from(s2 s3) ;;join
	s4.setsel ;;paste
	key Y ;; Enter
    � X � �                                                                                                                                                                                                                    �u!��f �?������ /siz 210
Text, keys, wait, messages :mac "Text, keys, wait, messages" * keyboard.ico
Mouse, variables, repeat :mac "Mouse, variables, repeat" * mouse.ico
Window functions :mac "Window functions" * window.ico
String manipulation :mac "String manipulation" * text.ico
Sample menu :mac "Sample menu"
-
Close :clo val(_command) * close.ico
�% �=�		�email :"my@ema.il" * email.ico
-
>Text
	LCase :str s.getsel; if(s.len) s.lcase; s.setsel
	UCase :str s.getsel; if(s.len) s.ucase; s.setsel
	<
>Files
	Internet Explorer :run "iexplore.exe"
	Documents :run "$documents$"
	<
 Trigger: two times quickly move the mouse up-down in the middle of the screen.
 Note: the Samples folder must be enabled. To enable, right click the folder and click Enable.
    � y� �                                                                                                                                                                        �b �7˾�� /
function str&s

 This function stores string value in variable s that is passed by reference.

mes "This function gets current date/time as string." "Sample_GetCurrentDate" "i"

s.timeformat("{D} {T}")
�[
 �)ƃ�� /
function# a b

 This function accepts 2 integer arguments and returns integer value.

mes "This function adds a and b.[]a is %i, b is %i" "Sample_MyFunction" "i" a b

int sum
sum=a+b

ret sum
�	 �{�P>���� This macro calls sample functions.

 declare variables
int r i
str date
 show list box
r=ListDialog("Sample_AddAB[]Sample_GetCurrentDate[][]Read more about functions" "Caller")
 call selected function
sel r
	case 1
	i=Sample_AddAB(10 5)
	mes i "Caller" "i"
	
	case 2
	Sample_GetCurrentDate date
	mes date "Caller" "i"
	
	case 4
	QmHelp "IDH_FUNCTIONTIPS"
    [ p � [                                                                             N �������run "http://www.quickmacros.com/forum/viewtopic.php?f=2&t=3368"
�B �w��O܊� /set0 1|4|32 /siz0 160 20 /mov0 200 -20 /client
Save :men "&File\&Save" * Save.ico
-
Cut :key Cx * Cut.ico
Copy :men "&Edit\&Copy" * Copy.ico
Paste :men "&Edit\&Paste" * Paste.ico
Undo :men "&Edit\&Undo" * Undo.ico
-
Find :men "&Edit\&Find"; err men "&Search\&Find" * Find.ico
 
 This toolbar will be attached to Notepad window.
 Note: the Samples folder must be enabled. To enable, right click the folder and click Enable.
� �Ђ.�� Activates next window. Can be used instead of Alt+Tab.
 Trigger: quickly horizontally move the mouse left-right in the middle of the screen.
 Note: the Samples folder must be enabled. To enable, right click the folder and click Enable.

act; err

  or press Alt+Tab:
 key AT



    2<--------------------------------------1
     -------------------------------------->3

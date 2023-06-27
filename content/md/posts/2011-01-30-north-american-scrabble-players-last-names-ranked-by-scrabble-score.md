{:title "North American Scrabble players' last names ranked by Scrabble score"
:layout :post
:tags  ["programming"]}

For a time, I played competitive Scrabble. I [even](http://www.cross-tables.com/tourney.php?t=6508&div=4) [won](http://www.cross-tables.com/tourney.php?t=6695&div=3) a couple of tournaments. I don't play
very much these days, what with a new baby and being busy [changing](http://www.chicagomediaaction.org) [the](http://chicago.indymedia.org/mod/info/display/video/index.php) [world](http://www.szcz.org/radio) and all.  
  
But as a lark, I decided to try something: ranking Scrabble players' last
names by using Scrabble's own scoring system. I figured my last name, with
three Z's (30 points), two C's (6 points), and a K (5 points), would make me
_very_ competitive.  
  
So I downloaded the [full list of Scrabble players](http://www.scrabbleplayers.org/ratings/data/full/current.txt)
from the [North American Scrabble Players Association](http://www.scrabbleplayers.org/w/Welcome_to_NASPAWiki).
Then I ran a couple of Unix commands and wrote a quick Python script to findthe answer.  
  
Here's are the Unix commands and the full source code of the script (don't
blink):  
  
```
cat current_2011-01.txt | awk '{print $1}' > current_2011-01-2.txt  
time ./scrabble_last_names.py > current_2011-01-3.txt  
more current_2011-01-3.txt | sort | uniq | sort -nr | head -30  
```

```
letter_values = {'A':1, 'B':3, 'C':3, 'D':2, 'E':1, 'F':4, 'G':2, 'H':4, 'I':1, 'J':8, 'K':5, 'L':1, 'M':3, 'N':1, 'O':1, 'P':3, 'Q':10, 'R':1, 'S':1, 'T':1, 'U':1, 'V':4, 'W':4, 'X':8, 'Y':4, 'Z':10, '-':0, "'":0}  
  
rows = open('current_2011-01-2.txt').readlines()  
for row in rows:  
    sum = 0  
    row = row[:-1]  
    for letter in row:  
        sum = sum + letter_values[letter]  
print sum, row  
```  
  
And the results of the top 30 last names, with their respective Scrabble scores, are listed below. I was right to think I was competitive. ;-)  

```
52 SZCZEPANCZYK  
48 PRZYBYSZEWSKI  
43 MROCZKIEWICZ  
42 MIKOLAJCZYK  
41 ZXQKJ  
41 KAZMIEROWICZ  
38 JANOTA-BZOWSKI  
37 ZMORZYNSKI  
37 VAZQUEZ  
36 KRAWCZYNSKI  
35 SZYMKOWIAK  
34 MARTINEZ-WOMBOLD  
34 KLEMASZEWSKI  
34 IMPELLIZZERI  
34 GAJDEROWICZ  
34 EZEKOWITZ  
34 CZERNIKOWSKI  
34 CRAWFORD-MACKAY  
33 SCHECKWITZ  
32 SUJJAYAKORN  
32 SCHWARTZBERG  
32 NAHACZEWSKI  
32 MATLOCK-WASHINGTON  
32 JANKOWITZ  
32 GRZYBOWSKI  
32 GIOVINAZZO  
31 ZEBOVITZ  
31 ROHATYNSKYJ  
31 QUACKENBUSH  
31 MACQUEEN-SMITH  
```
  
Some thoughts:  

  * Polish names dominate. By my assessment, the top four, eight of the top ten, and 15 of the top 30 scores are Polish -- what with a preponderance of Z's, that's little surpriZe. ;-)
  
  * Having a hyphenated last name also helps; of the top 30, four have hyphenated last names; the leading hyphenated last name (JANOTA-BZOWSKI) has both hyphenated parts being Polish.
  
  * I won; good thing I studied hard. [Cue Queen](http://www.youtube.com/watch?v=04854XqcfCY).

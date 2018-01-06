{:title "Mitchell Szczepanczyk's Subanagram Generator"
:layout :post
:tags  ["language"]}

In December 2001, I received an e-mail from my sister who teaches English to
5th and 6th grades. She e-mailed me to say that she gave her class the
assignment to make as many different words as possible from the letters in the
word "representative," and to ask me if I knew of any webpages that could
automatically make a list of such "sub-anagrams." After a search of the web,
I was unable to find such a page.

But I work in IT and I study computer science. So I wrote such a webpage. Here
it is.

Type in a word or string in the input field below and click 'Find
subanagrams'. You don't need to worry about typing in upper or lower case, but
please be sure that whatever you type has no spaces and please be patient as
it may take a bit of time.

<input id="subanagram-input" type="text"></input>
<button id="find-subanagrams">Find Subanagrams</button>
<p id="subanagram-results"></p>
<script type="text/javascript" src="http://localhost:3000/js/subanagram.js"></script>

I've put the [original Perl source code for the subanagram script](https://gist.github.com/msszczep/4d5ed17d64c2da4fb676209b7dc4ca00) under a General Public
License.

**Update, December 8, 2002**: I fixed a bug in the code on December 8, 2002. This
bug prevented the correct search for multiple instances of the same letter, so
that (for example) the word "bookkeeper" would not recognize "book" as a
subanagram. Now it does.

**Update, December 11, 2002**: There is a bug regarding plurals that I don't think
I will be able to fix anytime soon. One example was brought to my attention:
the word "snowflakes" does not deliver the subanagram "snakes", even
though it should. That's because "snakes" is not listed in the words file
which the generator uses, even though "snake" is. I could fix the problem by
either automating plurals (but that wouldn't work for irregular plurals like
"feet"), or by noting the plural in the words file itself (but that's a LOT
of work). Fixing either problem is more effort than I have time to spend.
Unfortunately, I'll punt this, and simply note this problem and say "Caveat
emptor".

**Update, December 5, 2004**: The subanagram script was moved to a new server, but
the dictionary I had been using didn't come along for the ride. As a result,
I've uploaded a new dictionary with a lot more words than previously-used
dictionaries. (The new dictionary has 234,936 words; previously-used
dictionaries had no more than 50,000 words.) As a result, some of the results
may be differ from what came before, but hopefully it should be something of
an improvement.

**Update, June 9, 2007**: After a move to yet another server, the subanagram
generator didn't work for months, but I've fixed it so that it works again.
Bonus bug fix: I've changed the sort of the numbered groups ("Words that are
X letters long"), so that they're sorted in numerical order rather than by
ASCII-sort order.

**Update, November 15, 2012**: After a server migration, it turns out that the new
server didn't have Perl anymore, so the script always broke. I replaced the
Perl script with a Python script (the resulting script was 30% smaller) and
updated the link above.

**Update, October 26, 2013**: I fixed the irregular plurals problem -- as well as
that for a great many plural words -- by adding in the words from a version of
the Official Scrabble Players Dictionary into the dictionary used by the
Subanagram Generator. This means, for example, that "snowflakes" now will
deliver back "snakes" as a subanagram. The new combined dictionary now has
275,246 entries.

{:title "Behind the scenes of Nicediceware"
:layout :post
:tags  ["programming" "language"]}

<img src="http://www.szcz.org/img/Dice.jpg" alt="Dice" style="width: 250px;"/>

Earlier in 2016, I released the first version of [Nicediceware](http://www.szcz.org/posts/2016-05-01-introducing-nicediceware), my variant of [Diceware](http://world.std.com/~reinhold/diceware.html) that used English words that are longer and (hopefully) easier to remember.

How did I find words that are easier to remember?  What did I use to help make that judgment call to determine what's easier to remember?  This post outlines the tools that I used to arrive at the list that comprised my Englihs language Nicediceware list.

I started out with the [MRC Psycholinguistic Database](http://www.psych.rl.ac.uk/MRC_Psych_Db_files/mrc2.html), which among other things tracks various ratings for words on metrics such as concreteness, imagery, familiarity, and meaningfulness.  I wanted words that scored high for all of these ratings, so [a Python script later](https://gist.github.com/msszczep/a77c9361b9dfff6f8f57bf772ef5c2a4) I reduced the more than 150,000 terms in the dictionary to a bit over 3,300 -- not enough for the 7,776 (6 to the 5th power) terms I would need to complete my first take at Nicediceware.

So I mined other sources: the list of non-stopwords in the [Basic English list](https://en.wiktionary.org/wiki/Appendix:Basic_English_word_list); the [WordData object](http://reference.wolfram.com/language/ref/WordData.html) in the [Wolfram Language](http://reference.wolfram.com/language/) to get the list of words that were classified as [a noun, a verb, and an adjective](https://gist.github.com/msszczep/d74014b94eb6220f8c8289179ba69349); a [website](https://www.thegamegal.com/printables/) listing sample data for do-it-yourself play-at-home games like Charades, Pictionary, and CatchPhrase.  Aggregating and de-duping the combined results led to a set of 7,616 distinct terms.

I filled in the remaining 160 terms from a database I had built using data in the [Jeopardy! Archive](http://www.j-archive.org): I queried the most popular single-word responses that hadn't yet been used in the Nicediceware list, and took the top 160 to complete the list.

This eliminated the limits that Diceware imposed on the length of individual words and the exclusion of proper nouns.  Of course, it's possible that terms in Nicediceware, particularly those that are derived from American popular culture, may not stand the test of time.  I suppose that's the kind of thing that would get revised as necessary in subsequent versions of Nicediceware.  After all, as I mentioned at the top of this post, I released the [first](https://github.com/msszczep/nicediceware/blob/master/nicediceware_en_us.txt) version of Nicediceware, possibly/hopefully not the last.

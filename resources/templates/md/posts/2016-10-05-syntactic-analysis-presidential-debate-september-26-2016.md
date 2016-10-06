{:title "A Syntactic Analysis of the Presidential Debate of September 26, 2016"
:layout :post
:tags  ["programming" "language" "media"]}

<img src="http://www.szcz.org/img/clinton_tree.png" alt="syntax" style="width: 400px;"/>

I analyzed the syntax of the Presidential Debate of September 26, 2016 between Hillary Clinton and Donald Trump.  In this post, I outline what I did and a summary of my findings.  TL;DR: Hillary Clinton talked less than Donald Trump, but she said more.

I have posted the results and process in a [public Github repository](https://github.com/msszczep/presidential_debate_2016-09-26]), so anyone interested in the data and process of analysis may look there.  I make use of the syntactic parsing packages that I have worked on in recent years -- in particular the [mccawley-api](https://github.com/msszczep/mccawley-api) repository which parses English sentences as webservice calls, and the [mccawley-bulk](https://github.com/msszczep/mccawley-bulk) repository which uses the mccawley-api for handling bulk amounts of written English language and which I adapted for analyzing the debate transcript.

I began by taking an unannotated copy of [the debate transcript](http://www.cbsnews.com/news/hillary-clinton-donald-trump-presidential-debate-hofstra-university-transcript-video/), cleaning it up (removing blank lines and ensuring that notes about speakers, when noted, always began a line of dialogue) into a [raw but consistent text format](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/transcript_raw.txt).  I then used [a Python script](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/get_sentences_and_speakers.py) to do two things: break up the text into sentences (one sentence per line), and denote a speaker for each sentence.

[The results](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/transcript_formatted.txt) of that process became the input that was fed into [a new sentences module in mccawley-bulk](https://github.com/msszczep/mccawley-bulk/blob/master/src/mccawley_bulk/sentences.clj) which did the parsing and analysis.  It took 5 minutes, 18 seconds for all 1,363 sentences transcribed in the debate.  I output that into [a vanilla text file](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/transcript_analysis.txt) and copied that into an [Excel spreadsheet](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/transcript_analysis.xlsx).

At this point, let's pause and look more closely at the fields of the analysis and what they mean.  The analysis delivered back eight columns:

1. **Speaker**: Who said the sentence.

2. **Transcript**: The transcribed sentence itself.

3. **# Words**: The number of words in the sentence -- computed simply by dividing the sentence by spaces and counting the result.

4. **# Nodes**: The number of syntactic nodes in the sentence, when parsed out.  In the terminology of graphs, where you have lines and dots and lines connecting dots, a "node" is a synonym for a dot.  For syntax trees, a node represents a word, or an abstract "dot" representing the combination of one or more words or one or more other "dots".

5. **# Tokens**: The number of tokens in the sentence.  A token in this context refers to an indivisible unit of language.  For example, the sentence "She's here" has two words but three tokens: "she", "'s" (a synonym for "is") and "here".

6.  **# Propositions**: The number of propositions in the sentence.  A _proposition_ (not to be confused by _prep_osition with an "e") refers to a word or term that can bear _some_ truth value.  (Whether or not it actually _is_ true is another story).  Such propositions can correspond to types of speech -- typically a verb, adjective, adverb, or prepositional phrase -- so this amounts to a count of the number of verbs, adjectives, adverbs, and prepositional phrases in the sentence.

7.  **Tree depth**: The number of levels deep in the tree drawn by the sentence at hand, starting from one level beneath the ROOT node.

8.  **S-Expression**: A representation of the tree itself as a nested list of parentheses.  Each set of parentheses wraps around a consituent or part of speech, and their nestings mirror the tree structure of the sentence.  Constitutents and parts of speech follow the [Penn Treebank Project](https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html).

I then used a great many command-line tools, some of which I [archived](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/USEFUL.sh) to compute statistics for each speaker.  The results of that are stored [in a separate Excel file](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/results.xlsx).  I reproduce some of those stats here with commentary:

<table class="t1">
<tr><th>Stat</th><th>Clinton</th><th>Trump</th></tr>
<tr>
<td>Number of sentences</td>
<td>433</td>
<td>752</td>
</tr>
<tr>
<td>Total number of distinct words</td>
<td>1375</td>
<td>1291</td>
</tr>
<tr>
<td>Total of distinct non-stopwords</td>
<td>1183</td>
<td>1101</td>
</tr>
</table>

Trump said more sentences than Clinton, to be sure.  A _stopword_ is a common word in a language, typically words that carry some universal function.  In the case of English, these include articles (a, an, the), prepositions (in, of, for, at, etc.), pronouns (he, she, it, etc.), and so on.  It's common in natural language processing to remove stopwords from analysis, given their preponderance and the fact that they don't necessarily carry a lot of insightful information.  I provide a count of the total number of distinct words and distinct stopwords spoken by each candidate in the debate.  I used [this list](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/english_stop_words.txt) of stop words and [this Clojure script](https://github.com/msszczep/presidential_debate_2016-09-26/blob/master/get_words.clj) script for determining those words and counts.

<table class="t1">
<tr><th>Stat</th><th>Clinton</th><th>Trump</th></tr>
<tr>
<td>Total number of words</td>
<td>6370</td>
<td>8679</td>
</tr>
<tr>
<td>Largest number of words</td>
<td>64</td>
<td>60</td>
</tr>
<tr>
<td>Average number of words per sentence</td>
<td>14.7</td>
<td>11.5</td>
</tr>
<tr>
<td>Total number of nodes</td>
<td>14341</td>
<td>20121</td>
</tr>
<tr>
<td>Largest number of nodes</td>
<td>147</td>
<td>136</td>
</tr>
<tr>
<td>Average number of nodes per sentence</td>
<td>33.1</td>
<td>26.7</td>
</tr>
<tr>
<td>Total number of tokens</td>
<td>7408</td>
<td>10496</td>
</tr>
<tr>
<td>Largest number of tokens</td>
<td>73</td>
<td>68</td>
</tr>
<tr>
<td>Average number of tokens per sentence</td>
<td>17.1</td>
<td>13.9</td>
</tr>
<tr>
<td>Total number of propositions</td>
<td>3054</td>
<td>4200</td>
</tr>
<tr>
<td>Largest number of propositions</td>
<td>34</td>
<td>34</td>
</tr>
<tr>
<td>Average number of propositions per sentence</td>
<td>7</td>
<td>5.5</td>
</tr>
<tr>
<td>Longest tree depth</td>
<td>31</td>
<td>34</td>
</tr>
<tr>
<td>Average tree depth per sentence</td>
<td>8.6</td>
<td>6.7</td>
</tr>
</table>

In all of these metrics, we see a consistent pattern: Trump clearly wins by _volume_: more words, more tokens, more of nearly everything.  But Clinton wins by _average_: her averages per sentence are greater than Trump's regardless where you look.  That's what I mean when I said that Hillary Clinton talked less than Donald Trump, but she said more.

There is one more metric I'd like to discuss:

<table class="t1">
<tr><th>Stat</th><th>Clinton</th><th>Trump</th></tr>
<tr><td padding=20>Number of ROOT-level FRAGments</td><td>10</td><td>27</td></tr>
</table>

When is a sentence not a sentence?  When it's a fragment.  That is, a sentence can be distilled down into components indicative of sentences -- for example, a noun phrase and a verb phrase in the case of a declarative sentence.  When it can't be so distilled, then it's classified as a sentence fragment (or FRAG as it's noted in the engine).  

Fragments are inevitable in spoken language, but in the case of a debate, fragments are like golf scores: the lower the number, the better.  Here Trump said more "sentences" classified as FRAG (by a ratio of nearly three to one), but that's not a good thing.  What's more, a great many of those fragments occurred in the course of his attempted interruptions of Clinton.  

I would advise two things, in particular to Donald Trump, in the subsequent debates: Don't interrupt so much, and be more selective in your words.  Sometimes, and especially here, less _is_ more.

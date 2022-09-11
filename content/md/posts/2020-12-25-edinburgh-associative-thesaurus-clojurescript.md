{:title "The Edinburgh Associative Thesaurus in Clojurescript"
:layout :post
:tags  ["language" "programming"]}

The Edinburgh Associative Thesaurus is a set of word associations; if you hear the word 
_library_ what word would first come to mind?  This is what researchers who published
with Edinburgh University Press sought to find.

The surveys took place among college students in the UK in the early 1970s, so the results
will be understandably affected by biases of time, place, and demographics.  Even so,
I've found the Edinburgh Associative Thesaurus to be a useful tool, 
particularly for word games like Password and Pyramid, and particularly since such 
empirical data sets are difficult to come by.  However, to my dismay, it appears that 
the main page
hosting a web form for querying the Thesaurus is offline.  (There are still 
[copies](http://vlado.fmf.uni-lj.si/pub/networks/data/dic/eat/Eat.htm) 
of the Thesaurus data online.)

I've taken the effort to remedy this somewhat by making my own form using data from the Thesaurus. 
Type in a word or string in the input field below and click the "Find word assocations" button.

Please note:
1.  You don't need to worry about typing in upper or lower case.  Searches are case-insensitive.
2.  There's no stemming -- searches are exact, so the results of "read" versus "reading" will
 differ.
3.  Results are sorted in descending order by the number of "hits" (responses in the original survey).
4.  Results are solely in the direction stimlulus-to-response.  You're typing in a stimulus term and seeing what responses, if any, are in the Thesaurus.
5.  Results, if any, appear below the form.

<input id="eat-input" type="text"></input>
&nbsp;
<button id="search-eat">Find word associations</button>
<p></p>
<p id="eat-results"></p>
<script type="text/javascript" src="http://www.szcz.org/js/eat.js"></script>

The source code is available online [here](https://github.com/msszczep/eat-cljs) and is 
based on the source for my [Subanagram generator in Clojurescript](https://github.com/msszczep/subanagram-cljs).  Thanks to Darius Kazemi for [providing a JSON version of the Thesaurus, which I used in this app](https://github.com/dariusk/ea-thesaurus).

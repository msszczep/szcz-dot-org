{:title "A \"big data\" analysis of the 2019 Chicago Mayoral race"
:layout :post
:tags  ["programming" "elections"]}

<img src="http://www.szcz.org/img/chicago-mayor-2019.png" width="500px" alt="Chicago mayoral race in the REPL"/>

The 2019 Chicago mayoral race has 14 candidates.  Some weeks ago, I read [this questionnaire](https://interactive.wbez.org/2019/mayoral-questionnaire/) on the WBEZ website, where 13 of the 14 candidates are asked 19 (not 20, as advertised on the article) yes-or-no questions.  The article is useful, but it doesn't tabulate the results.

So, I did.  I went through the list of questions, and graded each question as to which answer would be progressive.  I scored a +1 for a progressive response, a -1 for a non-progressive response, and a 0 for no response.  I then tabulated the responses for all of the candidates, then wrote a [computer program](https://github.com/msszczep/chicago_mayor_2019) to connect their responses for each question to the progressive score I devised, tallied the results, and sorted by their total score.

The result is listed above, in the screenshot of a [Clojure](https://clojure.org) [REPL](https://clojure.org/guides/repl/introduction), and also below in an easier-to-read format.  

<table class="t1">
<tr><th>Candidate</th><th>Score</th></tr>
<tr><td>Garry McCarthy</td><td>15</td></tr>
<tr><td>Amara Enyia</td><td>15</td></tr>
<tr><td>Lori Lightfoot</td><td>10</td></tr>
<tr><td>Toni Preckwinkle</td><td>8</td></tr>
<tr><td>John Kozlar</td><td>7</td></tr>
<tr><td>Susana Mendoza</td><td>7</td></tr>
<tr><td>LaShawn Ford</td><td>6</td></tr>
<tr><td>Bob Fioretti</td><td>5</td></tr>
<tr><td>Gery Chico</td><td>5</td></tr>
<tr><td>Paul Vallas</td><td>5</td></tr>
<tr><td>Willie Wilson</td><td>3</td></tr>
<tr><td>Jerry Joyce</td><td>-2</td></tr>
<tr><td>Bill Daley</td><td>-2</td></tr>
</table>

There are some things I expected:

1. Amara Enyia, perhaps the most progressive person on the ballot, scored tied for first.
2. Bill Daley, the former Commerce secretary and executive committee member of Chase bank, scored tied for last.
3. Lori Lightfoot and Toni Preckwinkle, perhaps the second and third most progressive people on the ballot, scored second and third, respectively.

There are some things I didn't expect:

1. Gerry McCarthy, the former Chicago chief-of-police who crushed Occupy Chicago and got fired in the wake of the Laquan McDonald scandal, is _tied for first_?
2. See #1.

Some caveats:

1. There are a great many issues _not_ covered in the questionnaire (Where's the question about TIFs?  Hello?!), so the score tabulated here may not necessarily reflect the full policy philosophy of a given candidate.
2. I only tabulated based on the yes/no/didn't-answer replies given on the questionnaire.  Some candidates, to their credit, didn't pin themselves to a binary yes-no, giving answers with a degree of nuance.  Such nuanced answers, however, would have gotten _dis_counted in this analysis.
3. I made a judgment call as to what response to a given question would count as progressive, and one may question _my_ judgment for such a scoring the questions the way I did.  To which I say: If you feel you can do a better job, be my guest.  [The source code and data are publicly available on Github](https://github.com/msszczep/chicago_mayor_2019), and you're welcome to fork the repository and change the scores (found in the "resources" directory) and/or the code as you wish.



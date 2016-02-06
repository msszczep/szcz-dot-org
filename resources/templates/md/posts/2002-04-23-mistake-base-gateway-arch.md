{:title "The Mistake at the Base of the Gateway Arch"
:layout :post
:tags  ["mathematics"]}

_There is no dishonor in saying "I don't know"; there is great dishonor in saying "I don't care to know" and insulting those who do. What sort of standard for education is set by such arrogant ignorance?_  
-- Carolyn Segal, Bethlehem, Pennsylvania,, New York Times Letters to the Editor page, October 10, 2000.

Let me make one thing absolutely clear: The Gateway Arch is safe. There's a
mistake at the base of the Gateway Arch, BUT it's a typo and the Gateway Arch
is safe. Even though the Arch weighs 43,000 tons of stainless steel and it can
sway as much as 18 inches with sufficiently strong winds, the Gateway Arch is
safe. I don't want to panic residents of St. Louis, nor the National Park
Service, nor the four million annual visitors to 11 North Fourth Street, St.
Louis, Missouri, 63102.

It's perfectly safe. It's been safe since construction ended in 1965 on the
630-foot-(192-meter)-tall monument. Finnish-born architect Eero Saarinen knew
what he was doing with his design when he won the 1947 competition for the
Jefferson National Expansion Memorial.

But there's still a mistake at the base of the Gateway Arch. And Saarinen is
probably rolling over in his Michigan grave about the mistake, which may well
have been in place since the Arch was built.

The mistake was discovered and generously brought to my attention by my friend
Matt Frank, a graduate student in the history and philosophy of mathematics
when he made the discovery in September 2000.

When you enter the North Tram of the Gateway Arch, you see an exhibit on the
science and engineering behind the Gateway Arch. In that exhibit, there's a
white plaque which shows the mathematical equations used in designing the
arch.

One of those equations is mistaken.

That's it. That's the mistake.

When Matt discovered this mistake, he found a staff person who had forms for
filing complaints and mentioned this mistake. The staff person then responded,
"I was never any good at algebra."

Fascinating. And I suppose that if someone discovered a misspelled word at the
same plaque this same staff person would likewise plead innocent with "I was
never any good at English."

Before I discuss the mistake, let me now digress into a (hopefully pain-free)
math lesson to help in understanding the mistake for those with little math
background.

First, a bit of algebra enters from stage left. The two key characters to
focus on are _x_ and _y_ --the main lines that you see in any algebraic grid
or Cartesian plane, where _y_ is the up/down coordinate line and _x_ is the
left/right line (plus they're the values associated with those lines, where
the intersection of _x_ and _y_ is zero and the values increase the further
away from zero).

An important supporting character is _c_ --a name for a number which doesn't
change even though do (think _c_ is for _c_onstant, that's good enough for
me).

Vocabulary time. You might know the term "hyperbolic" (pertaining to a
"hyperbola" -- a specific type of arch-shaped curve) and you might know the
term "cosine" (the left-right coordinate of a curve or circle on a Cartesian
plane). But you might not know the combined term "hyperbolic cosine"
(abbreviated "cosh"), which refers to a type of curve expressed formally as:

> cosh z = 1/2 (ez \+ e-z).

or, translated to words, half of the sum of some value (call it _z_) which
serve as positive and negative exponents of _e_ (the base of natural
logarithms, roughly 2.718).

These characters--_x_, _y_, _c_, and cosh--combine to form the following
equation:

> y = c (cosh x/c)

This equation is exact formal definition of a catenary--the name for the curve
drawn out by a hanging chain suspended between two points. In fact, the Latin
word for "chain" is _catena_\--the source of the very name "catenary." And
an inverted catenary, as you might guess, is simply a catenary turned upside-
down.

The Gateway Arch is itself an inverted catenary, whose exact formula somewhat
resembles the catenary formalism above:

> Y = A (cosh[X/L] C-1)

where L and A are values used in calculating parts of the Arch's base and top
(diversion alert: [click here for the story behind L and A](#appendixa)). Do the algebra to find the value for X (go on, it's fun
--I'll wait; when you're done you can [check your answer here](#appendixb)), and you get:

> X = L/C[cosh-1 (1 + [Y/A])]

These formulas for Y and X are listed on that plaque in the North Tram--except
that the X formula is listed on that plaque as:

> X = -[cos h (1+ Y/A)]

The Mistake at the Base of the Gateway Arch is actually three different
mistakes on this single equation for X: there's no constant L/C preceding the
inverse hyperbolic cosine, there's a minus sign preceding the inverse
hyperbolic cosine, and _there is no inverse hyperbolic cosine_ (denoted by a
superscript -1 above the cosh). Matt told me that the missing inverse tipped
him off to the discovery.

So what is drawn out by the formula for X that is listed on that plaque?
Forget about trying to draw it. It's nothing, nonsense, a misteak. I have
visited the Gateway Arch myself and confirmed the error firsthand.

This could be some kind of national embarrassment, given the prominence of
this mistake's locale. But its discovery may have gone totally unnoticed
before Matt's visit. And I must admit that, even though I count myself as a
math fan, if I hadn't known about the Mistake before I saw it, I probably
wouldn't have recognized it--never mind those who see the Mistake who don't
know math and are practially proud of their mathematically illteracy. So I
probably shouldn't use this to springboard into a complaint about the state of
mathematical literacy in the USA today.

And yet it exists and is real. And it doesn't help in the matter that a key
mathematical mistake is enshrined in the tallest national monument in the
United States. John Allen Paulos calls the unwillingness or fear of dealing
with math "innumeracy," and in his book on the topic (also called
_Innumeracy_) he writes:

> The same people who can understand the subtlest emotional nuances in conversation, the most convoluted plots in literature, and the most intricate aspects of a legal case can't seem to grasp the most basic elements of a mathematical demonstration.

> They seem to have no mathematical frame of reference and no basic understandings on which to build. They're afraid. They've been intimidated by officious and sometimes sexist teachers and others who may themselves suffer from math anxiety. The infamous word problems terrify them, and they're convinced that they're dumb. They feel that there are mathematical minds and nonmathematical minds, and that the former always come up with answers instantaneously whereas the latter are helpless and hopeless.

But having a mathematical mind (whatever that means) isn't the point. The
point, I think, is to invoke a sense of discovery and to cultivate some
appreciation and understanding of a subject, even if you're not "good" at
it. After all, you don't have to have a major league fastball to appreciate a
good baseball game.

Should we fix The Mistake at the Base of the Gateway Arch? Perhaps--if people
would know enough math to be shamed and embarrassed about the Mistake. But
then again, maybe we should let it be. This Mistake at the Base of the Gateway
Arch just might be the catalyst to encourage people to learn more math. I hope
you learned a little reading this essay.

Either way, more people would know more math. And a good thing too. To quote
John Allen Paulos one final time: "As has been said about many subjects,
mathematics is too important to be left to the mathematicians."

## BIBLIOGRAPHY

  1. Clapham, Christopher. The Concise Oxford Dictionary of Mathematics, 2nd Ed. New York: Oxford University Press. 1996. 
  2. Equation for the Catenary Curve of the Centroid of Arch Cross-Section. National Park Service/Jefferson National Expansion Memorial handout, United States Department of the Interior. (I got my copy in April 2001.) 
  3. Explore St. Louis: The 2001 Official St. Louis Visitors Guide. St. Louis: Publishing Concepts, 2001. 
  4. Frank, Matt. Personal Communication by e-mail, March 26, 2002. 
  5. Gateway Today: The Official Visitor's Guide to the Gateway Arch and Old Courthouse. (I got my copy in April 2001.) 
  6. Maor, Eli. e: the story of a number. Princeton, NJ: Princeton University Press. 1994. 
  7. Paulos, John Allen. Innumeracy: Mathematical Illiteracy and Its Consequences. New York: Hill and Wang, 1998. 
  8. "Saarinen, Eero." Britannica 2001 Deluxe Edition CD-ROM. Chicago: Encyclopaedia Britannica Inc, 2001. 
  9. Segal, Carolyn. Letter to editor, The New York Times, Oct. 11, 2000, pg. A30. 

## APPENDIX A: So what are L and A anyway?

L is half of the value of the centroid of the arch base. (A centroid is the
point of convergence of the medians of the lines extending from the lines of a
triangle). L equals 299.2239.

A equals:

> fc/((Qb/Qt) - 1)

where

> fc = the maximum height of the centroid = 635.0925

> Qb = the maximum X-section at the arch base = 1262.6651

> Qt = the minimum X-section at the arch top = 125.1406

C in equations of the Gateway Arch, by the way, is the inverse hyperbolic
cosine of the quantity Qb divided by Qt, which equals 3.0022.

## APPENDIX B: How to go from Y to X?

Y = A (cosh[X/L] C-1)

The correct equation for X in the North Tram.

Y/A = (cosh[X/L] C-1)

Divide both sides by A.

Y/A + 1 = (cosh[X/L] C)

Add one to both sides.

cosh-1(Y/A + 1) = [X/L] C

Take the inverse hyperbolic cosine from both sides.

1/C [cosh-1(Y/A + 1)] = [X/L]

Divide C from both sides.

L/C [cosh-1(Y/A + 1)] = X

Multiply L to both sides.

X = L/C [cosh-1(Y/A + 1)]

Reorder the sides, and you get the equation for X  
that _should_ be in the North Tram.


 ## EPILOGUE

Date: Fri, 27 Jun 2003 14:05:52 -0500  
From: [Bob Moore]  
To: msszczep@midway.uchicago.edu  
Subject: Gateway Arch Formula  
  
Dear Mr. Szczepanczyk:  
  
I work as the historian at the Gateway Arch in St. Louis. I wanted to let you
know that we discovered your website recently about the inaccurate
mathematical formula on one of our exhibit labels in the north load zone
beneath the Arch. We ran this formula by our park engineer, who agreed that
the plaque was incorrect and that your website was right. We are now in the
process of fabricating a new plaque with the correct formula on it. It is our
intention to try to present accurate information to the visiting public, and
we thank you for drawing this to our attention. Had you contacted us directly
we would have corrected the problem even sooner.  
  
Sincerely,  
  
Bob Moore  
Historian 


{:title "Computers and the Illusion of Randomness"
:layout :post
:tags  ["science"]}

Here's a small computer program. Start with some number that we'll call SEED.
(Most computers start with SEED equal to 1.) Multiply SEED by 1,103,515,245,
then add 12,345 to that, then divide it by 65,536, then divide it again by
32,768. Take the remainder of what's left, round it up, and make it your new
SEED and repeat this procedure every time you need some random number.

This is a summary of the "rand" function, a common utility used for
delivering "random" numbers. A common dirty joke among computer scientists
is that computers can deliver random numbers, random values, random anything.
But it's not true. John von Neumann, noted mathematician and computer pioneer,
is quoted as saying "Anyone who considers arithmetical methods of producing
random digits is, of course, in a state of sin."

People try to generate randomness anyway, and randomness has lots of
applications in computers. Certain certain games of chance, for example
(electronic versions of roulette, blackjack and so on), or in cryptography and
secure transmissions over the web: they're secure because, say, I'm hiding my
information behind two 100-digit prime numbers. I'll convert a message I want
to transmit into a string of numbers, multiply them with these two numbers,
and transmit the result. If you knew those numbers, or how to find them, you
could intercept my transmission, divide the result with them and read my
transmission. But the numbers are random, you'd have to keep trying 100-digit
numbers until you picked the right two, and you'd probably have an easier time
waiting for the sun to go supernova.

Bruce Schneier, in his book _Applied Cryptography_, discusses the matter of
computerized "randomness." Schneier states that computers are rule-governed
machines (unless you're using any Microsoft products). You put something into
a computer, entirely predictable rules are applied, and out comes something
else. And if you're dealing with predictability, you can't have randomness.
The most you can do is to make values look random statistically. And making
values look random depends little on the computer but rather on the starting
input, the SEED, and how you get it. For that, you rely less on computers and
more on the randomness inherent in the physical world.

There are even websites that offer randomness-from-the-physical world as a
public service. The Fourmilab Hotbits site
([www.fourmilab.ch/hotbits](http://www.fourmilab.ch/hotbits)) uses a
Geiger counter connected to an isotope of Krypton-85 to randomly generate
numbers which are then delivered (safely) to your computer. A truly far-out
method by Silicon Graphics actually uses, of all things, lava lamps (their
groovy site is [www.lavarand.org](http://www.lavarand.org)). One of the
earliest and most famous instances of computerized randomness was done in 1955
by the RAND (no pun intended) Corporation. They created what they called the
RAND tables--a book whose entire contents consisted of a million random digits
listed in five-digit groups. But they determined those digits also using a
physical source--a frequency pulse that effectively served as an electronic
roulette wheel.

Here's where things get wild. There is a view to the physical universe , from
John Archibald Wheeler to Seth Lloyd's June 2002 article in Nature (see [www.nature.com/nsu/020527/020527-16.html](http://www.nature.com/nsu/020527/020527-16.html)), that sees the universe itself as a giant computer. And like
any computer, that means entirely predictable rules are in play. When the
comet Shoemaker-Levy 9 crashed into Jupiter in 1994, we could anticipate the
crash in advance because of regular, predictable rules in the universe. If the
physical universe is a giant computer, then it, like any computer, is rule-
governed, which means predictable, which means _not random_. And yet, at the
same time, _the physical universe is the only reliable source of randomness_.
The Fourmilab Hotbits, the lava lamps, and the RAND tables all can confidently
count themselves as random phenomena.

So how can the universe simultaneously be random and predictable? To be sure,
some have attempted to resolve this contradiction. One solution articulated by
physicist Brian Greene regarding randomness at the quantum level is that
randomness at the quantum level is "smeared" away as one advances to ever-larger size scales. But not all randomness occurs at the quantum level; roll a
pair of dice, for example. If attempts to resolve this contradiction aren't
successful, maybe the entire universe is in a state of sin. 


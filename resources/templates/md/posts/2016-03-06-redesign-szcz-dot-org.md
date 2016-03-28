{:title "The 2016 Redesign of SZCZ.org"
:layout :post
:tags  ["announcements"]}

On February 6, 2016, I made public a redesign and restructuring of my personal website.  This marks the first substantial redesign of my website in more than a decade, and the eighth such iteration of my personal website since I started writing on the World Wide Web.  To review the history, now twenty years in the making:

1.  Just one month before I graduated from college, I set up my very first website (http://www-personal.umich.edu/~szcz) as an assignment [for a class](http://www-personal.umich.edu/~jlawler/geb.html).  The page even helped me draw the attention of a journalist with the New York Daily News, who interviewed me in the summer of 1996 about American phonology (accents).  Unfortunately, it appears that this website does not appear to have a surviving archival copy on the internet. 

2.  When I entered graduate school later that year, I set up a second personal page that, I am happy to report, [has been archived](http://web.archive.org/web/20010801000000*/http://home.uchicago.edu/~msszczep).  

3.  Personal pages set up on university servers were prone to deletion if the owner of the account left the university -- for example, if a student who set up a personal page graduated.  That's why I set up an insurance policy of sorts by posting a copy of my personal archives on another, commercial site.  The first such backup was on a site called GoPlay (http://www.goplay.com/~szcz); it was here that I garnered a bit of fame for my page on The Stanley Cup: A History of Abuse and Neglect.  The page was cited by ESPN Radio and garnered a mention in print in a June 1998 issue of ESPN: The Magazine.  Regrettably, GoPlay abruptly went out of business, and so I moved my webpage to....

4.  Geocities! Copies of this [have also been archived](http://www.geocities.com/szczepanczyk).

5.  I had access to a second server at the University of Chicago's computer science department, when I was a graduate student there, which served as a temporary home for some things.  Shockingly, as I write this, that page is [still online](http://people.cs.uchicago.edu/~msszczep/). 

6.  Even before the collapse of Geocities, I figured it was time to get my own domain.  A boss of mine half-jokingly floated the idea to reserve mitchellszczepanczyk.com, but that struck me as a bit overlong for the shrinking standards of website domains.  I tried to get szcz.com, which as I write this has apparently been used as a redirect.  Plan B: Get szcz.org, which was available.  The website could use a fresh look, and my design prowess was meager, so I asked a [friend of mine](http://www.limeredstudio.com) to [redesign my website](http://www.szcz.org/img/szcz-php.png), which I then coded as a dynamic webpage using the PHP web programming language.

7.  A bit after the heyday of blogs, [I set up a blog](http://www.szcz.org/img/szcz-blog.png) using the Wordpress framework as a subsite of my main website.  This then led to a half-decade-long split-mind existence of my website: a blog with relatively recent content, complete with updated code and doodads like categories and chronological archives and a search bar (even if it was still PHP) -- alongside my main website which hosted content from my radio show and long-form articles.  Pages on one seldom referred to the other.  

8.  I had considered a redesign and structural unification.  But with what?  I code for a living, but at the same time I don't want to get involved in _too_ much code.  I just knew it wasn't to involve PHP, which has [its share of problems](http://toykeeper.net/soapbox/php_problems/) and which has fallen into disfavor, at least among developers, myself included.  I had fallen in love -- hard -- for [Clojure](http://www.clojure.org), so much so that I attended Clojure conferences (my first conferences for any programming language, it turns out).  I did learn about a static-web-generator software package written in Clojure called Cryogen, and after review and when I got the opportunity in late January 2016, I decided to take the plunge.  Over the course of a week, I worked to convert all my previous web posts -- from "both" websites -- into individual Markdown files; [there are tools to speed the process along](https://github.com/aaronsw/html2text), but it took a while to work through twenty years of idiosyncracies.  

The result is what you see here.  Not too shabby, especially since the result is now in a much cleaner format [and in source control to boot](https://github.com/msszczep/szcz-dot-org), hopefully ready for whatever new toy comes next. 


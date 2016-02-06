{:title "Jeopardy! - Daytime or Primetime"
:layout :post
:tags  ["television" "trivia" "programming"]}

In Michigan where I grew up, Jeopardy! was always a prime time staple -- it
aired at 7:30PM local time, even when it switched from the local CBS affiliate
to the local ABC affiliate and back again. But when I moved to Illinois, I had
assumed that it always aired at the same or similar time around the country
and was shocked to find that it aired at 3:30PM on Chicago's ABC affiliate
(whose scheduling division is evidently managed by stupid idiots). This sucks
since I was seldom home at that time to watch the show. But it got me
thinking: if Jeopardy! doesn't air for every station in prime time, how
widespread is the pattern of _not_ airing Jeopardy! in primetime?  
  
This is a question which we can quickly answer, and also inspire a geochart
mashup, but more on that in a moment. The Jeopardy! website kindly [provides a list of showtimes and channels](http://www.jeopardy.com/showguide/whentowatch/), grouped by
U.S. state, with an interactive map. One Python script later, and I have my
answer: 229 stations air the show -- 90 of which (39%) air the show in daytime
(which I define to mean before 6PM local time), while the remaining 139 air
the show at 6PM local time or later.  
  
But we can go further, thanks to the [Google Visualization API](https://developers.google.com/chart/interactive/docs/index) and its
[Geochart function](https://developers.google.com/chart/interactive/docs/gallery/geochart). When I take the results of that Python script and input the results as a Javascript list into the API, here is the result:  
  
![Jeopardy](http://www.szcz.org/img/jeopardy_daytime_or_primetime.png)  
  
For whatever reason or reasons, the vast majority of stations that air
Jeopardy! in daytime cluster around the Mississippi River and nearby states.
But why is this the case? Moreover, on what basis do stations decide to air
the show at one time versus another time? Can any generalities be drawn?
Whatever the pattern is now, was this always or predominantly the case during
Jeopardy!'s almost-three-decade-long run?  
  
Lots of questions about a show that prides itself on its answers...  

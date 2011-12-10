Twinkit
========

Parses all links and titles of the links from any twitter username.

How to install
===============

    $gem install twinkit
    
How to use
===========

    Twinkit.get_links("twitter_username")
    
Example
========

    t = Twinkit.get_links("loveallogy")  #=>  [#<struct Twinkit::Twink url="http://t.co/m7AAXlVT", title="A Serving of Gratitude Brings Healthy Dividends - NYTimes.com", redir_url="http://www.nytimes.com/2011/11/22/science/a-serving-of-gratitude-brings-healthy-dividends.html">, #<struct Twinkit::Twink url="http://t.co/9z8Il0oI", title="YaleNews | Tuning out: How brains benefit from meditation", redir_url="http://news.yale.edu/2011/11/21/tuning-out-how-brains-benefit-meditation">]
    t[0].title     #=> "A Serving of Gratitude Brings Healthy Dividends - NYTimes.com"
    t[0].redir_url #=> "http://www.nytimes.com/2011/11/22/science/a-serving-of-gratitude-brings-healthy-dividends.html"

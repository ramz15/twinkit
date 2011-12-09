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

    Twinkit.get_links("loveallogy")  #=>  [["http://t.co/m7AAXlVT", "A Serving of Gratitude Brings Healthy Dividends - NYTimes.com"], ["http://t.co/9z8Il0oI", "YaleNews | Tuning out: How brains benefit from meditation"]] 

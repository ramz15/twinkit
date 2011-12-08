require "rubygems"
require "Twitter"
require "open-uri"
require "nokogiri"

module Twinkit

  def self.get_links(name)
    tweets = Twitter.user_timeline(name)
    tweet_text = ""

    # grab tweet text from user
    tweets.each do |t| 
      tweet_text << " , " << t.text 
    end
  
    # parse links from tweets
    twink =  /((http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w!:.?+=&%@!\-\/]))?)/ 

    link = tweet_text.scan(twink)

    link_array = []

    link.each do |l|
      
      link_and_title = [] << l[0]

      URI.parse(l[0]).open do |f|
        body = f.read
        doc = Nokogiri::HTML.parse(body)
        link_and_title << doc.title
      end
      
      link_array << link_and_title
    end
    
    return link_array
  end

end
require "rubygems"
require "Twitter"
require "open-uri"
require "nokogiri"

module Twinkit
  
  # create a Struct called Twink
  Twink = Struct.new(:url, :title, :redir_url)

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

      begin
        s = Twink.new(l[0])
        # link_and_title = [] << l[0]
        URI.parse(l[0]).open do |f|
          body = f.read
          doc = Nokogiri::HTML.parse(body)
          s.title = doc.title
          # link_and_title << doc.title
        end
        s.redir_url = Net::HTTP.get_response(URI.parse(l[0]))['location']
        # link_and_title << Net::HTTP.get_response(URI.parse(l[0]))['location']
        link_array << s
      rescue => e
        case e 
        when URI::InvalidURIError
          p "invalid URL #{l[0]}"
        end
      end      
    end
    
    return link_array
  end

end
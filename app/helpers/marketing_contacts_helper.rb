module MarketingContactsHelper
  
  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end
  
  def facebook_with_protocol(url)
    /^http/.match(url) ? url : "http://www.facebook.com/#{url}"
  end
  
  def twitter_with_protocol(url)
    /^http/.match(url) ? url : "http://twitter.com/#{url}"
  end
  
end

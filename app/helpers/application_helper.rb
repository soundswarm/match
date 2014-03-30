module ApplicationHelper

  require 'open-uri'
  require 'json'

  def self.parseJSON
  	JSON.parse(open("https://api.github.com/users/drumwolf/events").read)
  end

end

require "what_should_i_eat/version"
require 'what_should_i_eat/printing.rb'
require 'net/http'
require 'json'

module WhatShouldIEat
  class Error < StandardError; end
  def WhatShouldIEat.fresh
    result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
    recipes = JSON.parse(result)
    name = recipes.first['items'].first['label']
    url = recipes.first['items'].first['url']
    Printing.print name, url
  end
end

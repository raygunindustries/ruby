require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open('https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich'))
search = doc.css('li')
list = doc.css('.ingredient-label')
list.each do |n|
    puts n.inner_html
end

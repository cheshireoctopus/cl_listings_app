class ListingsController < ApplicationController
  require 'open-uri'

  def index
  end

  def austin
    url = "http://austin.craigslist.org"
    page = Nokogiri::HTML(open(url+"/web"))
    @listings = {}
    10.times do |x|
      @listings[page.css('p')[x].text] = url+page.css('.i')[x].attributes["href"].value
    end
  end

  def boston
    url = "http://boston.craigslist.org"
    page = Nokogiri::HTML(open(url+"/web"))
    @listings = {}
    10.times do |x|
      @listings[page.css('p')[x].text] = url+page.css('.i')[x].attributes["href"].value
    end
  end

  def losangeles
    url = "http://losangeles.craigslist.org"
    page = Nokogiri::HTML(open(url+"/web"))
    @listings = {}
    10.times do |x|
      @listings[page.css('p')[x].text] = url+page.css('.i')[x].attributes["href"].value
    end
  end

  def newyorkcity
    url = "http://newyork.craigslist.org"
    page = Nokogiri::HTML(open(url+"/web"))
    @listings = {}
    10.times do |x|
      @listings[page.css('p')[x].text] = url+page.css('.i')[x].attributes["href"].value
    end
  end

end

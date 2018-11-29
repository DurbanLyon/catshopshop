require 'faker'
require 'nokogiri'
require 'open-uri'

    doc = Nokogiri::HTML(open("https://burst.shopify.com/cat"))
    @taburl = []
    @tabtitle = []
    myhash = {}
    20.times do
        doc.css('.photo-tile__image-wrapper @href').each do |url| @tabtitle << url.text.delete('/')[6..-1].gsub!('-',' ') end
        doc.css('.photo-tile__image-wrapper @href').each do |url| @taburl << "https://burst.shopify.com#{url.text}" end
    end

    20.times do |y|
        @items = Item.create(title:@tabtitle[y], description:Faker::Lorem.paragraph, price:rand(1..10), image_url:@taburl[y])
    end
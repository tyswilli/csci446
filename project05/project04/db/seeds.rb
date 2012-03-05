# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
require 'active_record/fixtures'

(1..50).each do |i|
    Article.create(:author => "Person #{i}", :title => "Awesome Article #{i}", :body => "I like the number #{i} Banh mi raw denim direct trade vegan butcher bespoke, jean shorts biodiesel readymade chambray godard ethical hoodie VHS. Hella carles cardigan, fap keffiyeh DIY gentrify. Hella freegan helvetica squid narwhal brooklyn gentrify. Messenger bag shoreditch salvia, photo booth hella viral jean shorts pickled thundercats. Forage art party terry richardson bushwick ethical, gluten-free gentrify craft beer etsy. American apparel yr beard letterpress wolf craft beer. Cred 3 wolf moon organic, Austin mustache biodiesel fingerstache pickled squid retro kale chips jean shorts vinyl chillwave.

Beard retro lomo, direct trade jean shorts occupy aesthetic. Small batch thundercats VHS photo booth sustainable twee, ennui stumptown swag hoodie. Farm-to-table brunch squid retro chillwave marfa 3 wolf moon ennui. Flexitarian seitan etsy brunch, irony four loko bushwick bicycle rights. PBR 8-bit cliche, wes anderson organic master cleanse pickled biodiesel yr Austin. Kogi keytar aesthetic jean shorts, mustache artisan lo-fi keffiyeh godard locavore fanny pack umami pour-over single-origin coffee etsy. Pop-up Austin seitan, wayfarers truffaut direct trade forage.

Vinyl typewriter farm-to-table, DIY keffiyeh fap semiotics trust fund. Shoreditch blog high life food truck pork belly. Mlkshk marfa master cleanse, umami whatever pop-up tofu typewriter jean shorts locavore mustache art party narwhal keytar brooklyn. Authentic polaroid pitchfork 8-bit direct trade. Pour-over pitchfork odd future blog 3 wolf moon high life. Wolf kogi brunch chambray scenester messenger bag, locavore Austin squid banh mi selvage irony typewriter. Squid williamsburg synth, pork belly selvage wayfarers artisan.

Tattooed synth ethnic kogi, banksy letterpress carles narwhal typewriter single-origin coffee 8-bit bushwick. Hella vinyl trust fund single-origin coffee salvia thundercats. Bespoke vinyl high life, quinoa PBR next level letterpress you probably haven't heard of them. Chillwave semiotics readymade godard, synth DIY brunch next level kale chips mustache. Iphone narwhal trust fund pour-over biodiesel. Readymade bicycle rights kogi portland you probably haven't heard of them, chillwave food truck hoodie forage. Lomo leggings fingerstache mumblecore fixie street art pinterest aesthetic wolf mlkshk, skateboard gastropub.", :edits => i)
end
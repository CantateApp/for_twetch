class Cantate
  attr_reader :twitter, :paymail, :client, :twetch_app

  def initialize(twitter, paymail, client, twetch_app)
    @twitter = twitter
    @paymail = paymail
    @client = client
    @twetch_app = twetch_app
  end

  author_array = []

  paymail = [ paymail: ["drovers"], ;fg
    twttr: ["@cantatedotco"], 
    baemail: ["https://baemail.me", "drovers@moneybutton.com"]
  ]

  author_array << ["@toothman", "#applemusic", "$bsv"]
  client = [ client_twttr: ["@applemusic", "@apple"], client_tags: ["#applemusic", "#apple"]]

  twitter = [ related_apps: ["@twetchapp", "@twitter", "@paymailhandles", "@money_button"], hash_tags: ["$bsv", "#retweet"] ]

  twetch_app = [ twetch_twttr: "@twetchapp", 
    ultra_tags: ["@1133", "@2459", "@852"],
    twetch_ids: ["u/1133", "u/2459", "u/852"] 
  ]

  def self.post_tags(twitter)
    twitter.each { |item| puts "#{item}"}
  end

  def self.client_details(client)
    client.each { |item| puts "#{item}"}
  end

  def self.author_details(author_array)
    author_array.each { |item| puts "#{item}"}
  end

  def self.advertise_paymail(paymail)
    paymail.each { |details| puts "#{details}"}
  end

  def self.twetch_metatags(twetch_app)
    twetch_app.each { |item| puts "#{item}"}
  end
end


advertise_paymail(paymail)
puts "-----------------------------------------"
# author_details(author_array)
client_details(client)
post_tags(twitter)
puts "-----------------------------------------"
twetch_metatags(twetch_app)

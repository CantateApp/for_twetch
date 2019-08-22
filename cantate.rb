class Cantate
	attr_reader :twitter, :paymail, :client, :twetch_app

	def initialize(twitter, paymail, client, twetch_app)
    	@twitter = twitter
    	@paymail = paymail
    	@client = client
    	@twetch_app = twetch_app
    end
    author_array = []

    paymail = [ paymail: ["applemusic"], 
    			contact_twttr: ["@cantatedotco"], 
    			contact_paymail: ["http://moneybutton.email", "drovers@moneybutton.com"]
    			]

    author_array << ["@toothman", "#applemusic", "$bsv"]
    client = [ client_twttr: ["@applemusic", "@apple"], client_tags: ["#applemusic", "#apple"]]

    twitter = [ related_apps: ["@twetchapp", "@twitter", "@paymailhandles", "@money_button"], hash_tags: ["$bsv", "#retweet"] ]

    twetch_app = [ twetch_twttr: "@twetchapp", 
    	ultra_tags: ["@1133", "@2459", "@852"],
    	twetch_ids: ["u/1133", "u/2459", "u/852"] 
    ]


    def self.post_tags(twitter)
		twitter.each do |item|
			puts "#{item}"
		end
	end

	def self.client_details(client)
		client.each do |item|
			puts "#{item}"
		end
	end

	def self.author_details(author_array)
		author_array.each do |item|
			puts "#{item}"
		end
	end

	def self.advertise_paymail(paymail)
		paymail.each do |details|
			puts "#{details}"
		end
	end

	def self.twetch_metatags(twetch_app)
		twetch_app.each do |item|
			puts "#{item}"
		end
	end

	advertise_paymail(paymail)
	puts "-----------------------------------------"
	# author_details(author_array)
	client_details(client)
	post_tags(twitter)
	puts "-----------------------------------------"
	twetch_metatags(twetch_app)
end

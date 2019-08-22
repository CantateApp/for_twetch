class Cantate
	attr_reader :twitter, :paymail, :client, :twetch_app

	def initialize(twitter, paymail, client, twetch_app)
    	@twitter = twitter
    	@paymail = paymail
    	@client = client
    	@twetch_app = twetch_app
    end
    author_array = []

    paymail = [{ handle: "sirce", owner_twttr: ["@toothman", "@cantatedotco"]}]
    author_array << ["@georgetoothman", "#nothing", "$bsv"]
    client = [{ details: ["@applemusic", "@apple"], paymail: "applemusic"}]

    twitter = [{ handle: "@twitter", paymail: "@paymailhandles"}, tags: ["$bsv"]]

    twetch_app = [ twetch_tags: { 
    	handles: { "@paymailhandles", "@money_button", "@twetch"}, 
    	ids: { "u/1133", "u/2459", "u/852"}, 
    	twttr: {"@paymailhandles", "@money_button", "@twetchapp"}
    	}
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

	advertise_paymail(paymail)
	author_details(author_array)
	client_details(client)
	post_tags(twitter)
end

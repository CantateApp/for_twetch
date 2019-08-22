class Cantate
	attr_reader :twitter, :paymail, :client

	def initialize(twitter, paymail, client)
    	@twitter = twitter
    	@paymail = paymail
    	@client = client
    end
    author_array = []

    twitter = [{ handle: "@twitter", paymail: "@paymailhandles"}, tags: ["$bsv"]]
    author_array << ["@georgetoothman", "#nothing", "$bsv"]
    client = [{ details: ["something", "something"], paymail: "#truth"}]
    paymail = [{ handle: "sirce", owner_twttr: ["@toothman", "@cantatedotco"]}]

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

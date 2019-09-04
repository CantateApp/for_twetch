class Cantate
   attr_accessor :app, :auth, :root_to

   def initialize(app, auth, root_to)
  	@app = app
  	@auth = auth
  	@root_to = root_to
   end

   def self.feature_request(root_to)
     root_to = []
     root_to << [ new_home: ["https://twetch.app/?filter=latest"]]
     this = root_to[0]
     this.each do |item| 
       puts "#{item}"
       puts "-----------------------------------------"
     end
   end
end

Cantate.feature_request(@root_to)
require 'net/http'
require 'json'

module OmeletUi
	class Comm
		attr_accessor :server

		def initialize server=nil
			self.server = server if server
		end

		def request(url, data, method)
			# Use server as base URL if provided
			url = @server + url if @server

			uri = URI.parse(url)

			# Convert the parameters into JSON and set the content type as application/json
			req = method.new(uri.path)
			req.body = JSON.generate(data)
			req["Content-Type"] = "application/json"
			req["Accept"] = "application/json"

			http = Net::HTTP.new(uri.host, uri.port)
			response = http.start {|h| h.request(req) }
		end

		def post(url, data={})
			request url, data, Net::HTTP::Post
		end

		def put(url, data={})
			request url, data, Net::HTTP::Put
		end

		def delete(url, data={})
			request url, data, Net::HTTP::Delete
		end

		def get(url, data={})
			request url, data, Net::HTTP::Get
		end
	end
end

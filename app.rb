require_relative 'config/environment'

class App < Sinatra::Base

	def call(env)
		req = Rack::Request.new(env)

		res = Rack::Response.new

		if req.path.match(/name/)
			res.write("My name is Lauren")
			res.status = 200

		elsif req.path.match(/hometown/)
			res.write("My hometown is New Rochelle")
			res.status = 200

		elsif req.path.match(/favorite-song/)
			res.write("My favorite song is Landslide")
			res.status = 200

		else
			res.write("Page not found")
			res.status = 404
		end
		
		res.finish 
	end

end


# The `name` route should display "My name is \_\_" in the browser, the
# `hometown` route should display "My hometown is \_\_", and the `favorite-song`
# route should display "My favorite song is \_\_".

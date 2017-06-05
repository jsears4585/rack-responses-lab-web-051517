class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.now.hour < 12 ? 'Morning' : 'Afternoon'
    resp.write "Good #{t}!"
    resp.finish
  end
end

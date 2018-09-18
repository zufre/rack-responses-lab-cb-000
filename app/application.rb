
class Application
  def call(env)
    resp = Rack::Response.new
    Time.new.hour.to_i < 12 ? resp.write "Good Morning!" : resp.write "Good Afternoon!"
    resp.finish
  end
end

module YourApp
  class Application < Rails::Application
    #...
    config.generators do |g|
      g.assets     false
      g.helper     false
    end
    #...
  end
end
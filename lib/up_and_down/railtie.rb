module UpAndDown
  require 'rails'
  class Railtie < Rails::Railtie
    rake_tasks { load "tasks/site.rake" }
  end
end

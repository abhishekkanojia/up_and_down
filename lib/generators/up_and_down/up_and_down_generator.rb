require 'rails/generators/base'

class UpAndDownGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../templates', __FILE__)

  def create_controller
    create_file "app/controllers/up_and_down/base_controller.rb", controller_definition
  end

  def create_template
    copy_file "maintenance.html.erb", "app/views/up_and_down/base/index.html.erb"
  end

  def create_route
    route "match '(*path)', to: 'up_and_down/base#index', via: :all"
  end

  private

    def controller_definition
      "class UpAndDown::BaseController < ActionController::Base
        layout false
        def index
        end
      end"
    end
end

require_relative '../initializers/constants.rb'

namespace :site do
  desc "Down site for maintenence. will create site down page."
  task down: :environment do
    if system('rails g up_and_down -q')
      puts "Site is down for maintenance."
    end
  end

  desc "Up site. will remove site down page if exists"
  task up: :environment do
    if system('rails destroy up_and_down -q')
      puts "Site is up and running."
    end
  end

  desc "Check site status whether up or down"
  task status: :environment do
    if files_exists? && root_route_exists?
      prompt_message 'Site is Down.'
    else
      prompt_message 'Site is Up.'
    end
  end
end

def files_exists?
  [CONTROLLER_FILE_PATH, LAYOUT_FILE_PATH].all? { |file| File.exists?(file) }
end

def root_route_exists?
  recognizer = Rails.application.routes.recognize_path('/')
  recognizer[:controller].eql?(CONTROLLER) && recognizer[:action].eql?(ACTION)
end

def prompt_message(message)
  puts message
end

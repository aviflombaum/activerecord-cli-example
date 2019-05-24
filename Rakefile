# Rakefile
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "./config/environment"
  end

  task :seed do
    load './db/seeds.rb'
  end

  task :import_songs => :load_config do
    SongImporter.new("/Users/avi/DJMusic").import!
  end
end


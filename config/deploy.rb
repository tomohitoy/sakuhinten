require 'bundler/capistrano'
require 'capistrano_colors'

load 'deploy/assets'

set :application, "sakuhinten"
set :deploy_to, "/var/rails/sakuhinten"
set :user, "rails"
set :use_sudo, false

set :local_repository, "eduqgit:sakuhinten.git"
set :repository, "/var/git/sakuhinten.git"
set :branch, "master"
set :scm, :git
set :deploy_via, :remote_cache
set :shared_children, shared_children + %w{public/uploads}

set :normalize_asset_timestamps, false
set :keep_releases, 3

role :web, "eduqdep"
role :app, "eduqdep"
role :db,  "eduqdep", :primary => true

after "deploy:update", :roles => :app do
  run "cp #{shared_path}/config/database.yml #{release_path}/config/"
end

after "deploy:update", "deploy:cleanup"

namespace :deploy do
  desc "Restarts your application."
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Load the seed data from db/seeds.rb"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end
  desc "Reset the sql data"
  task :migratereset do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:migrate:reset"
  end
end
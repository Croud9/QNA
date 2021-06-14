# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "qna"
set :repo_url, "git@github.com:Croud9/QNA.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deployer/qna"
set :deploy_user, 'deployer'

# Default value for :linked_files is []
append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", 'storage'

after 'deploy:publishing', 'unicorn:restart' 
# before "deploy:assets:precompile", "deploy:xx_bin"
# namespace :deploy do
#   desc "Run rake yarn install"
#   task :xx_bin do
#     on roles(:web) do
#       within release_path do
#         execute "cd #{release_path}/bin && chmod u+x *"
#       end
#     end
#   end
# end

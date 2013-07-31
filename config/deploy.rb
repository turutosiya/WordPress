set :application,               "Blog Recommener Mockup Blog"

default_run_options[:pty]       = true

# repository infomation
set :scm,                       :git
set :repository,                "https://github.com/turutosiya/WordPress.git"

# destination
server                          "192.241.226.183:22222", :app
set :user,                      "blog-recommender"
ssh_options[:keys]              = %w(~/.ssh/id_rsa)
set :use_sudo,                  false
set :deploy_to,                 "/home/blog-recommender.com"
set :deploy_via,                :remote_cache

# exclude files
set :copy_exclude,              [".git", "Capfile", "Gemfile", "license.txt"]

# shared files
set :shared_children,           ["wp-content/uploads"]

# auto cleanup 
# http://redmine.sunbi.co.jp/issues/4784
after "deploy", "deploy:cleanup"


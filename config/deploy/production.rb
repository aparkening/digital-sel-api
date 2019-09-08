# frozen_string_literal: true

server '34.233.109.135', roles: %i[app web db], user: 'ec2-user'
set :default_env, path: '/home/ec2-user/.rvm/gems/ruby-2.4.4/bin:$PATH'
set :linked_dirs, %w[tmp]
set :linked_files, %w[config/database.yml .env]
set :stage, :production

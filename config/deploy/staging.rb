role :app, %w{gway@128.199.17.243}
role :web, %w{gway@128.199.17.243}
role :db,  %w{gway@128.199.17.243}

server '128.199.17.243', user: 'gway', roles: %w{web app db}

set :deploy_to, "/home/gway/apps/mirra"

set :ssh_options, {
    forward_agent: true,
    auth_methods: %w(password),
    password: 'gway@gway2020',
    user: 'gway',
}

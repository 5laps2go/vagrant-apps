# how to run ruby on rails tutorial

1. git clone git@github.com:5laps2go/rails-tutorial.git

1. cd rails-tutorial/ch15

1. bundle install

1. #bundle update --bundler   # Gemfile.lockのBUNDLED WITHを現bundlerに更新

1. bundle config disable_platform_warnings true

1. rails webpacker:install

1. rails db:migrate

1. rails test

### recovery procedures for bcrypt 3.1.11 related issues
- # edit Gemfile to update bcrypt 3.1.11 to 3.1.12 for ch1 - ch14
- # bundle install
- # gem uninstall bcrypt:3.1.11


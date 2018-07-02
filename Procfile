web: RAILS_MAX_THREADS=5 bundle exec puma -C config/puma.rb
worker: RAILS_MAX_THREADS=25 bundle exec sidekiq -q high -q default -q low
release: bundle exec rails db:migrate

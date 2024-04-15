namespace :coverage do
  task :report do
    require 'simplecov'

    SimpleCov.collate Dir["coverage-reports/.resultset_*.json"]
  end
end
# Drop into features/support and spec/support -- modify path to helper lib dir as needed
# for access to any rspec helper methods
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

if defined?(RSpec) && RSpec.respond_to?(:configure)
  RSpec.configure do |config|
    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation, except: %w(spatial_ref_sys))
    end

    config.before(:each) do
      DatabaseCleaner.start
      FactoryGirl.reload
    end

    config.after(:each) do
      DatabaseCleaner.clean
    end
  end
end

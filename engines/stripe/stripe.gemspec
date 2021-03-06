$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "stripe/version"

Gem::Specification.new do |s|
  s.name = "stripe"
  s.version = '1.20.1'
  s.required_ruby_version = ">= 2.0.0"
  s.summary = "Ruby bindings for the Stripe API"
  s.description = "Stripe is the easiest way to accept payments online.  See https://stripe.com for details."
  s.author = "Stripe"
  s.email = "support@stripe.com"
  s.homepage = "https://stripe.com/docs/api/ruby"
  s.license = "MIT"

  s.add_dependency("faraday", "~> 0.9.2")

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
end

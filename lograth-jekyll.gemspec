# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "lograth-jekyll"
  spec.version       = "0.1.0"
  spec.authors       = ["hidden-people"]
  spec.email         = ["hidden-mail@email.hidden"]

  spec.summary       = "Simple Jekyll Blog theme"
  spec.homepage      = "https://github.com/danipragustia/lograth-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "jekyll-feed", "~> 0.9"
  spec.add_development_dependency "jekyll-paginate", "~> 1.1"
  spec.add_development_dependency "jekyll-redirect-from", "~> 0.12"
  spec.add_development_dependency "bundler", "~> 2.0"
end

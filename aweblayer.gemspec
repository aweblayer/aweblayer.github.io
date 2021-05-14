# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "aweblayer"
  spec.version       = "1.0.0"
  spec.authors       = ["aweblayer"]
  spec.email         = ["aweblayer@gmail.com"]

  spec.summary       = "Tech Blogs"
  spec.homepage      = "https://github.com/aweblayer/aweblayer.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|_posts|blog|LICENSE|README|package|node_modules|favicon)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end

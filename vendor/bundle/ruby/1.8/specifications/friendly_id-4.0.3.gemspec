# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{friendly_id}
  s.version = "4.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = %q{2012-03-14}
  s.description = %q{FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for
Ruby on Rails. It allows you to create pretty URLs and work with human-friendly
strings as if they were numeric ids for Active Record models.
}
  s.email = ["norman@njclarke.com"]
  s.homepage = %q{http://github.com/norman/friendly_id}
  s.post_install_message = %q{NOTE: FriendlyId 4.x breaks compatibility with 3.x. If you're upgrading
from 3.x, please see this document:

http://rubydoc.info/github/norman/friendly_id/master/file/WhatsNew.md

}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{friendly_id}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A comprehensive slugging and pretty-URL plugin.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<railties>, ["~> 3.2.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["~> 3.2.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.2.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

require File.expand_path('../lib/mysql2/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{mysql2}
  s.version = Mysql2::VERSION
  s.authors = ["Brian Lopez"]
  s.date = Time.now.utc.strftime("%Y-%m-%d")
  s.email = %q{seniorlopez@gmail.com}
  s.extensions = ["ext/mysql2/extconf.rb"]
  s.files = [".gitignore", ".rspec", ".rvmrc", ".travis.yml", "CHANGELOG.md", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.md", "Rakefile", "benchmark/active_record.rb", "benchmark/active_record_threaded.rb", "benchmark/allocations.rb", "benchmark/escape.rb", "benchmark/query_with_mysql_casting.rb", "benchmark/query_without_mysql_casting.rb", "benchmark/sequel.rb", "benchmark/setup_db.rb", "benchmark/threaded.rb", "examples/eventmachine.rb", "examples/threaded.rb", "ext/mysql2/client.c", "ext/mysql2/client.h", "ext/mysql2/extconf.rb", "ext/mysql2/mysql2_ext.c", "ext/mysql2/mysql2_ext.h", "ext/mysql2/result.c", "ext/mysql2/result.h", "ext/mysql2/wait_for_single_fd.h", "lib/mysql2.rb", "lib/mysql2/client.rb", "lib/mysql2/em.rb", "lib/mysql2/error.rb", "lib/mysql2/result.rb", "lib/mysql2/version.rb", "mysql2.gemspec", "spec/em/em_spec.rb", "spec/mysql2/client_spec.rb", "spec/mysql2/error_spec.rb", "spec/mysql2/result_spec.rb", "spec/rcov.opts", "spec/spec_helper.rb", "tasks/benchmarks.rake", "tasks/compile.rake", "tasks/rspec.rake", "tasks/vendor_mysql.rake"]
  s.homepage = %q{http://github.com/brianmario/mysql2}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{A simple, fast Mysql library for Ruby, binding to libmysql}
  s.test_files = ["examples/eventmachine.rb", "examples/threaded.rb", "spec/em/em_spec.rb", "spec/mysql2/client_spec.rb", "spec/mysql2/error_spec.rb", "spec/mysql2/result_spec.rb", "spec/rcov.opts", "spec/spec_helper.rb"]

  # tests
  s.add_development_dependency 'eventmachine'
  s.add_development_dependency 'rake-compiler', "~> 0.7.7"
  s.add_development_dependency 'rake', '0.8.7' # NB: 0.8.7 required by rake-compiler 0.7.9
  s.add_development_dependency 'rspec'
  # benchmarks
  s.add_development_dependency 'activerecord'
  s.add_development_dependency 'mysql'
  s.add_development_dependency 'do_mysql'
  s.add_development_dependency 'sequel'
  s.add_development_dependency 'faker'
end

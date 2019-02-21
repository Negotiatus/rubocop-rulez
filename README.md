# rubocop-rulez

Negotiatus' shared Rubocop styling configuration.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'rubocop-rulez'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'rubocop-rulez'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  rubocop-rulez:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. `rubocop-rulez` will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.

# Unchain BBS

rails study

## Installation

```
git clone https://github.com/unchain-fm-oranie/unchain-bbs.git
```

* development

```
gem install bundler
bundle install
```

* Create MySQL Database 
```
mysql> create database unchainbbs_development;
```

./bin/rake db:migrate
./bin/rails s
```

* production

```
./bin/rake assets:precompile
./bin/rake db:migrate RAILS_ENV=production
RAILS_ENV=production ./bin/bundle exec unicorn
```

## LICENSE

MIT

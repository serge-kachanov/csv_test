# README

## Requirement

Application built with:

* ruby 2.3.1

## Installation
```
git clone git@github.com:serge-kachanov/csv_test.git
cd csv_test
bundle install
rails db:migrate
rails s
```
## Usage
Application URL is `localhost:3000/products?producer=producer_name`;

You can use `page` `per_page` HTTP params for pagination, and provide producer param (case insensitive) to search products;

Application will update its database 1 time per day via whenever task, use whenever readme for setup https://github.com/javan/whenever;

You can provide alternative CSV file path in parameters for ImportProductsService;

# Tests

run `rspec` to run tests

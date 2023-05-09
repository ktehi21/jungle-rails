# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111/ 1234/ 123 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

<!-- 
root               GET / products#index
products           GET /products(.:format) products#index
product            GET /products/:id(.:format) products#show
category           GET /categories/:id(.:format) categories#show
add_item_cart      POST /cart/add_item(.:format) carts#add_item
remove_item_cart   POST /cart/remove_item(.:format) carts#remove_item
cart               GET /cart(.:format) carts#show
orders             POST /orders(.:format) orders#create
order              GET /orders/:id(.:format) orders#show
admin_root         GET /admin(.:format) admin/dashboard#show
admin_products     GET /admin/products(.:format) admin/products#index
                   POST /admin/products(.:format) admin/products#create
new_admin_product  GET /admin/products/new(.:format) admin/products#new
admin_product      DELETE /admin/products/:id(.:format) -->

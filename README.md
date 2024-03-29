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
- turbolinks
- webpack
- webpack-cli

## Admin page

Use the admin ID: Jungle, password: book

## Screenshots

- Main page
!["Main page"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/01_main_page.png)

- Admin page
!["Admin login"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/02_admin_login.png)
!["Admin product page"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/03_admin_page.png)

- After user login "Signed in as / logout"
!["After user login"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/04_user_logined.png)

- Soldout badge / disable add button
!["Soldout badge"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/05_sold_out.png)

- Cart page
!["Cart page"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/06_cart.png)

- Order detail page
!["Order detail"](https://raw.githubusercontent.com/ktehi21/jungle-rails/master/docs/07_order_completed.png)

# The Sleek Realtors

This is the  backend counterpart for the real estate web application,The Sleek Realtors, built using Ruby on Rails.

## Prerequisites
Before you can run this app, you'll need to have the following installed on your machine:

Ruby 

Rails 

## Getting Started
1. clone this repository to your local machine
    git clone https://github.com/alvinsleek/the-sleek-realtors-rails

2. Navigate to the app directory

cd the-sleek-realtors-rails

3. Install the required gems

bundle install

4. Create and migrate the database

rails db:create

rails db:migrate

5. Start the server 

rails s

The API should now be running on http://localhost:4000.


## API Endpoints
The following API endpoints are available:

GET /properties: Returns a list of all properties
POST /properties: Creates a new property
GET /properties/:id: Returns details of a specific property
PUT /properties/:id: Updates a specific property
DELETE /properties/:id: Deletes a specific property

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.



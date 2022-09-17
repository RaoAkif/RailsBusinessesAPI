## Backend
#### Rails Businesses API

## THIS REPO CONTAINS
  - Simple API with Business Data Endpoints [Endpoint1](https://github.com/RaoAkif/RailsBusinessesAPI/tree/main1) | [Endpoint2](https://github.com/RaoAkif/RailsBusinessesAPI/tree/main2)
  - API with Crud [Endpoint](https://github.com/RaoAkif/RailsBusinessesAPI/tree/api_crud)
  - API with Authentication [Endpoint](https://github.com/RaoAkif/RailsBusinessesAPI/tree/api-auth-access_authentication)

## To Reinitiate the Project

Initialize a backend template
```
rails new rails_businesses-api --api -d postgresql
```

Add businesses controllers
```
rails g controller api/v1/businesses index show
```

Add Business Model
```
rails g model business match_confidence:integer is_matched:boolean name:string addresses:string phone_numbers:string websites:string year_incorporated:string
```

Add Username and Passwords
```
username: postgres
password: 12345
```

Creating DB, and Adding Migrations
```
rails db:create
```
```
rails db:migrate
```
```
rails db:seed
```

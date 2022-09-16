## Backend
#### Rails Businesses API

Initiate a backend template
```
rails new rails_businesses-api --api -d postgresql
```

Add businesses controllers
```
rails g controller api/v1/businesses index show
```

Add Business Model
```
rails g model business match_confidence:integer is_matched:boolean addresses:string phone_numbers:string websites:string year_incorporated:string
```


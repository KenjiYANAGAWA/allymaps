# ♿️ AllyMaps

A trip planner for people with disabilities. This app allows them to plan entire accessible trips from searching places to the routes to and from the places in their itineraries.

<p float="left">
  <img src="https://user-images.githubusercontent.com/69304255/172322701-7347a697-11de-47e1-bc34-e99344674610.png" width="250" />
  <img src="https://user-images.githubusercontent.com/69304255/172323155-773aba9b-e213-47c8-99fe-911825289225.png" width="250" /> 
  <img src="https://user-images.githubusercontent.com/69304255/172323212-f00c516b-0b0e-4eee-b63b-1152abdf681d.png" width="250" />
  <img src="https://user-images.githubusercontent.com/69304255/172323249-3eaa8dd4-8766-49a7-a0f4-885d6b1c4ee2.png" width="250" />
  <img src="https://user-images.githubusercontent.com/69304255/172323286-ce8dc233-0870-4be7-9c46-baaec64680f4.png" width="250" />
  <img src="https://user-images.githubusercontent.com/69304255/172323300-d420c157-c1ab-4ce5-9c9c-8ed929140486.png" width="250" />
</p>

<br>
App home: https://allymaps.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_url_key
GOOGLE_MAPS_API_KEY=your_own_google_maps_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## References
 - [AccessibleJapan](https://www.accessible-japan.com/)

## Team Members
- [Luis Rodriguez](https://www.github.com/luisrrv)
- [Tirso Pascual](https://www.github.com/tirsop)
- [Yuki Harwood](https://www.github.com/yharwood)
- [Kenji Yanagawa](https://www.github.com/KenjiYANAGAWA)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

![](https://img.shields.io/badge/Microverse-blueviolet)
# Ruby on Rails API for Find Page

> This Rails app was created in order to deploy a live API for back-end functionality for a Find Your Device web aplication. There are 3 different tables: Users, Devices, and Favorites. The relationship between Devices and Users tables has been implemented correctly in order to create the Favorite table.

> The MVC concepts of RoR have been used to provide functionality.

## Live Links

[Users](https://jarfsoft-houses-api.herokuapp.com/users)
[Devices](https://jarfsoft-houses-api.herokuapp.com/devices)
[Favorites](https://jarfsoft-houses-api.herokuapp.com/user_devices)


### Built With

- Ruby
- Ruby on Rails 6
- Rubocop
- Visual Studio Code
- Linux
- Rspec

### Setup

- Clone or download the project to your local machine. If necessary, unzip the file.

- Change to the project's root directory
```
cd houses_api
```

- Install the required gems
```
bundle install
```

- Setup the database
```
rails db:create
rails db:migrate
```

- Start up the Rails server
```
rails server
```

- Open your browser and access your app on the address

NOTE: You need to have `Bundler` installed and, of course, `Ruby`. If don't have `Bundler` installed you can install it with `gem install bundler`.

Assuming that `Bundler` is installed, you can continue with the following steps:
- Step 1: Clone this repository. Just use: `git clone git@github.com:Jarfsoft/houses_api.git`.
- Step 2: Open the project folder where the repository was downloaded. Once you are in that folder, open a terminal and make sure that it will be opened in that specific folder.
- Step 3: Once you are in the terminal, just type in: `bundle install`. This will install the required dependencies for this project.
- Step 4: Type in `rails webpacker:install` to avoid a webpacker:manifest error while trying to run the project.
- Step 5: Now, you need to run the migrations. To do this, while in the project root folder type in: `rails db:migrate`.
- Step 6: Now, to try the project type in: `rails console`. You can add Users, Posts and Comments in hash form. Remember to take into account the restrictions in place for each model. You can check them out in *app/models*.

### Author

### Running test with Rspec

In order to run the tests correctly, you should follow these steps:

- Step 1: run `rake db:seed RAILS_ENV=test` on the terminal.
- Step 2: run `rspec --format documentation` on the terminal to test the models.
- Step 3: run `rails test` on the terminal to tests the controllers methods.

???? **Juan Raudales**

- Github : [@Jarfsoft](https://github.com/Jarfsoft)
- Twitter : [@Jarfsoft](https://twitter.com/Jarfsoft)
- Linkedin : [Jarfsoft](https://www.linkedin.com/in/juan-raudales-flores/)


### ???? Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Jarfsoft/houses_api/issues/).

### Show your support

Give a ?????? if you like this project!


### ???? License

This project is for microverse course purposes.

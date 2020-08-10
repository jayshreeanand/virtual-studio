# Admin credentials

You can access the admin panel here - https://virtual-studio.herokuapp.com/admin
Credentials
email: admin@example.com
password: password

# Tech Stack

- Ruby on Rails
- Postgres
- Auth0 for authentication
- AWS S3 for Image uploads
- Google javascript Maps API
- Sketchfab for 3D rendering and assets
- Heroku server

## Installation

### Dependencies:

1. Install ImageMagick (`brew install imagemagick` or `sudo apt-get install imagemagick`)

### First-Time Setup:

1. Install RVM (http://rvm.io). Source RVM or restart your Terminal. Ensure `rvm requirements` doesn't throw any warnings. On Mac, you might have to install XCode Command Line Tools if you haven't already (`xcode-select --install`).
2. Install Ruby. Install the version under `.ruby-version`, eg. `rvm install 2.1.1`
3. Change into the docbuddy directory. This should automatically create the gemset. If that doesn't happen, you can create the gemset manually `rvm use --create 2.1.4@digitizr`.
4. Download and install PostgresApp (Mac only) from postgresapp.com. OR, install the latest version of `psql`. If you're using the Mac app, ensure you install Command Line Tools (http://postgresapp.com/documentation/cli-tools.html).
5. Copy and modify the database.yml file: `cp config/database.yml.example config/database.yml`
6. Copy and modify the .env file: `cp .env.example .env`
7. Run `bundle install` to install all the gems
8. Run `rake db:setup` to create and seed the database
9. Run `foreman start` to run the server

```
10. Edit your hosts file (On Mac, the hosts file exists at `/etc/hosts`) and add the following entry:

```

127.0.0.1 www.virtual-studio-dev.com
127.0.0.1 demo.virtual-studio-dev.com

### Handling updates:

1. Run `bundle install`
2. Run `rake db:migrate`

# MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

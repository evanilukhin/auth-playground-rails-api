# Auth playground. Rails API
This is the little experiment that's shows different variants of an authentication between API(in this case it is written on Rails)
and SPA (I have chosen React)

## Preparation
Execute next commands in your terminal:
```sh
rake db:setup
```
After you must set environment variable `SPA_ORIGIN`. I use gem [Envyable](https://github.com/philnash/envyable) for it. Or you can set up during launching a server
```sh
SPA_ORIGIN=localhost:3000 rails s -p 3001
```
## Cookie
## JWT
## JWT+Cookies

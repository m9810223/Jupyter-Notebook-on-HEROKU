# Steps

- Fork this repository.
- Create a new app on heroku.
- Install [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli).
- `heroku stack:set container -a ${YOUR_HEROKU_APP_NAME}` to set app stack to container.
- Change notebook server [password](app/jupyter_config.py#L21).
- Go to `Deploy` page in heroku app and select `GitHub` in `Deployment method`. Connect to your repositor. Then, deploy it.
- You can check the status of your deployment in `Activity` page.
- Done! Open app page and enter your password.

# [notebook](https://heroku-jupyter-87049.herokuapp.com/)

ref: [set new heroku app](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml#getting-started)

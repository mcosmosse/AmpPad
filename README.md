## AmpPad 

AmpPad is a clone of the popular story-sharing website Wattpad, and aims to clone the key features of such a website: namely, a UI friendly reader's and writer's interface and ability to create collections, vote on impressive works, and comment on any particular chapter.

[Link to Site](https://amp-pad.herokuapp.com/#/)

![Splash](splash.PNG)

The **backend** was built using Ruby on Rails with a Postgresql database. Rails, together with Postgresql, handled all the logic and permanent data which needed to be saved to the database, and pass it to the frontend upon HTTP request. This code can be found inside  `/app/models`, `/app/controllers/api`, and `/app/views/api`. Database schema can be found in `/db/schema`

The **frontend** was built using JavaScript and React/Redux. This allows for faster loading times because the webapp is essentially one site, and load portions of it depending on user input. This can be found in `/frontend`.

### Features

1. User Auth

![login](login.PNG)

* Users are able to sign in, log in, and log out
* Users can test the site freely with a demo log in
* Some features are locked behind logging in.

2. Stories and Chapters

![storyindex](storyindex.PNG)

* Everyone can freely see all the stories posted on the site
* Each story has a table of contents with links taking the user to the correct chapter.
* Each chapter has a link taking the user to the next chapter.
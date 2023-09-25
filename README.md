
㊗️ Tokyo Glow
---

An app that connect and future parents in Japan

**OVERVIEW**

Our team has developed a mobile app designed to assist future parents in finding the best clinic based on various criteria. Users of our app can also connect with each other to share information and ask questions. Additionally, our app allows users to check upcoming events and add them to their own calendars.

DROP SCREENSHOT HERE

![Screenshot 2023-09-25 214343](https://github.com/Roveri91/TokyoGlow/assets/105217392/098ce093-a619-496e-8c28-00f76416eac3)
![Screenshot 2023-09-25 214645](https://github.com/Roveri91/TokyoGlow/assets/105217392/de855be7-010f-4be8-a426-fa9c41245fe4)
![Screenshot 2023-09-25 214613](https://github.com/Roveri91/TokyoGlow/assets/105217392/6152a0f6-1190-44fd-a562-febb1e300006)
![Screenshot 2023-09-25 214430](https://github.com/Roveri91/TokyoGlow/assets/105217392/dda5fe86-eec1-4688-be28-6adc53376527)
![Screenshot 2023-09-25 214410](https://github.com/Roveri91/TokyoGlow/assets/105217392/b1a8dce0-d371-4d1c-affd-18bbd1cf506b)


⚙️ Setup
---
Install gems

```
bundle install
```

**ENV Variables**
Create `.env` file

```
touch .env
```

Inside `.env`, set these variables. For any APIs, see group Slack channel.

```
CLOUDINARY_URL=your_own_cloudinary_url_key 
```

DB Setup

```
rails db:create
rails db:migrate
rails db:seed
  
```

Run a server

```
rails s
```


📕 Usage
---

App home: http://www.tokyoglow.site/

User: peach@gmail.com
PW: 123456

🔨 Built With
---
+ [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
+ [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
+ [Heroku](https://www.heroku.com/) - Deployment
+ [PostgreSQL](https://www.postgresql.org/) - Database
+ [Bootstrap](https://getbootstrap.com/) — Styling
+ [Figma](https://www.figma.com/ja/) — Prototyping


🗿 Team Members
---
* [Simone Roveri](https://www.linkedin.com/in/simone-roveri/),
* [Johnny Smith](https://www.linkedin.com/in/jonathan-smith-046007138/),
* [Giulia Menin](https://www.linkedin.com/in/giuliamenin/),
* [Tenny Ma](https://www.linkedin.com/in/tennyma/).


💅 Contributing
---
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

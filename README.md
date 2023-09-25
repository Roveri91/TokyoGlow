
㊗️ Tokyo Glow
---

An app that connect and future parents in Japan

**OVERVIEW**

Our team has developed a mobile app designed to assist future parents in finding the best clinic based on various criteria. Users of our app can also connect with each other to share information and ask questions. Additionally, our app allows users to check upcoming events and add them to their own calendars.

DROP SCREENSHOT HERE

![Screenshot 2023-09-25 214645](https://github.com/Roveri91/TokyoGlow/assets/105217392/00ceb78c-09f7-4209-9899-4d412eada770)
![Screenshot 2023-09-25 214613](https://github.com/Roveri91/TokyoGlow/assets/105217392/1273f064-1f26-44dc-8292-af02a8452241)
![Screenshot 2023-09-25 214430](https://github.com/Roveri91/TokyoGlow/assets/105217392/df36ba32-a17c-43a3-8098-379f7c528017)
![Screenshot 2023-09-25 214410](https://github.com/Roveri91/TokyoGlow/assets/105217392/06a32c45-2452-467f-8a17-6cf99b02050f)
![Screenshot 2023-09-25 214343](https://github.com/Roveri91/TokyoGlow/assets/105217392/c9787094-4db9-406d-a190-c7612871e711)


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

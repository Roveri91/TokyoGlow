
㊗️ Tokyo Glow
---

An app that connect and future parents in Japan

**OVERVIEW**

Our team has developed a mobile app designed to assist future parents in finding the best clinic based on various criteria. Users of our app can also connect with each other to share information and ask questions. Additionally, our app allows users to check upcoming events and add them to their own calendars.

📱SCREENSHOT
---

![Screenshot 2023-09-25 215612](https://github.com/Roveri91/TokyoGlow/assets/105217392/3f4b10cc-8570-4930-8d3b-555c35284ec3)
---
![Screenshot 2023-09-25 215553](https://github.com/Roveri91/TokyoGlow/assets/105217392/b2f88160-c0cd-47cc-b52b-c6b8f89a7a15)
![Screenshot 2023-09-25 215521](https://github.com/Roveri91/TokyoGlow/assets/105217392/f2eef614-c95c-450c-96f5-2d39d5ba3a24)
![Screenshot 2023-09-25 215418](https://github.com/Roveri91/TokyoGlow/assets/105217392/a38f605e-3da8-481f-823b-5188cb93b7ab)

---

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

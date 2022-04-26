require('dotenv').config()
const puppeteer = require('puppeteer');
var mysql = require('mysql');
const { now } = require('lodash');

const channels = ['social', 'eat', 'game', 'watch', 'money'];

for (let a = 0; a < channels.length; a++) {
  for (let t = 0; t <= 40; t+=20) {
    const connection = mysql.createConnection({
      host: process.env.DB_HOST,
      user: process.env.DB_USERNAME,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_DATABASE
    });
    
    (async () => {
      const browser = await puppeteer.launch();
      const page = await browser.newPage();


      await page.goto('https://www.appbrain.com/search?q='+channels[a]+'&src=header&o='+ t, {
        waitUntil: 'networkidle0',
      });
      
      const links = await page.$$eval('a.visible-xs', as => as.map(a => a.href));

      social_links = [];

      for (let i = 0; i < links.length; i++) {
        if (links[i].includes('/app/')){
          let link = links[i].split("/");
          const updateStreamerInfo = "INSERT INTO  packages (app_url, created_at, updated_at) VALUES ('"+link[5]+ "','"+new Date().toJSON().slice(0, 10)+"','"+new Date().toJSON().slice(0, 10)+"')";

          connection.query(updateStreamerInfo,function(err) {
            if (err) {
              console.log(err);
            } else {
              console.log('DB insert successful');
            }
          });

        }

      }
      connection.end();
      await browser.close();

    })();

  }
}

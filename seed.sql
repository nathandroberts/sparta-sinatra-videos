DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  source TEXT,
  image TEXT

);
insert into video (title, body, source, image) values ('Disney•Pixar', 'Incredibles 2 Official Teaser Trailer', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZJDMWVZta3M" frameborder="0" allowfullscreen></iframe>', 'http://cdn3-www.comingsoon.net/assets/uploads/2017/11/incrediblesheader.jpg');
insert into video (title, body, source, image) values ('h4h4Productions', 'ULTIMATE TO BE CONTINUED MEME COMPILATION !!! / 2017 MEMES', '<iframe width="560" height="315" src="https://www.youtube.com/embed/04zJRaeFz90" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/k1ktn_Qi1cU/maxresdefault.jpg');
insert into video (title, body, source, image) values ('Life Hacks & Experiments🔪🔥🔥🔥', 'Glowing 1000 degree KNIFE VS FIDGET SPINNER', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ci_PqoWEFik" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/SU3sJ-nQFQw/maxresdefault.jpg');

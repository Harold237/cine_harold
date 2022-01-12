import 'dart:ui';
class Film {
  final String name;
  final String asset;

  const Film({
    required this.name,
    required this.asset,
  });
}

class Utils{
  static List<Film> getFilms(){
    return const [
      Film(
        name: 'Avenger',
        asset: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQRldT4RKBlDSiPcwHAZbLAUNqsGCatYti-CLyeCxCsG9iADdMq',
      ),
      Film(
        name: 'Spiderman',
        asset: 'https://fr.web.img4.acsta.net/pictures/21/11/16/10/01/4860598.jpg',
      ),
      Film(
        name: 'Games of thrones',
        asset: 'https://m.media-amazon.com/images/I/91DjGXn7jXL._AC_SL1500_.jpg',
      ),
      Film(
        name: 'Robocop',
        asset: 'https://i.pinimg.com/736x/23/30/f6/2330f60d29c7764c907ec32c3f51f7d8.jpg',
      ),
      Film(
        name: 'One piece',
        asset: 'https://cdn.radiofrance.fr/s3/cruiser-production/2021/11/10b0b001-6e3d-496f-afc3-2f5524a3d334/1200x680_onep-mea.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      ),
      Film(
        name: 'Baki',
        asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
      )
    ];
  }
}
class Ticket {
  final String name;
  final String asset;

  const Ticket({
    required this.name,
    required this.asset,
  });
}

const List<Ticket> tickets = [
  Ticket(
    name: 'Baki',
    asset: 'https://media.senscritique.com/media/000020174664/source_big/Baki_Son_of_Ogre.jpg',
  ),
  Ticket(
    name: 'Avenger',
    asset: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQRldT4RKBlDSiPcwHAZbLAUNqsGCatYti-CLyeCxCsG9iADdMq',
  ),
  Ticket(
    name: 'Robocop',
    asset: 'https://i.pinimg.com/736x/23/30/f6/2330f60d29c7764c907ec32c3f51f7d8.jpg',
  ),
  Ticket(
    name: 'One piece',
    asset: 'https://cdn.radiofrance.fr/s3/cruiser-production/2021/11/10b0b001-6e3d-496f-afc3-2f5524a3d334/1200x680_onep-mea.jpg',
  ),
  Ticket(
    name: 'Spiderman',
    asset: 'https://fr.web.img4.acsta.net/pictures/21/11/16/10/01/4860598.jpg',

  ),
];



class User {
  final String name;
  final String asset;
  final String title;
  final int ranking;
  final Color color;

  const User({
    required this.name,
    required this.asset,
    required this.title,
    required this.ranking,
    required this.color,
  });
}

const List<User> users = [
  User(
    name: 'David Borg',
    title: 'Flying wings',
    asset: 'images/1.jpg',
    ranking: 1,
    color: Color(0xff7fabf4),
  ),
  User(
    name: 'Lucy',
    title: 'Growing up trouble',
    asset: 'images/2.jpg',
    ranking: 2,
    color: Color(0xfff3af64),
  ),
  User(
    name: 'Jerry Cool West',
    title: "Scultor's diary",
    asset: 'images/3.jpg',
    ranking: 3,
    color: Color(0xffec6188),
  ),
  User(
    name: 'Bold',
    title: 'Illustration of little girl',
    asset: 'images/4.jpg',
    ranking: 1,
    color: Color(0xffb17bf3),
  ),
  User(
    name: 'David Borg',
    title: 'Flying wings',
    asset: 'images/5.jpg',
    ranking: 1,
    color: Color(0xff69e2bf),
  ),
];
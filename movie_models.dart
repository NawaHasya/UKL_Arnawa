class movie {
  final String banner;
  final String poster;
  final String nama;
  final String genre;
  final int rating;

  movie({
    required this.banner,
    required this.poster,
    required this.genre,
    required this.nama,
    required this.rating,
  });
}

List<movie> categories = [
  movie(
    banner: 'petakumpet.jpg',
    poster: 'cars.png',
    genre: "Animasi",
    nama: 'Cars',
    rating: 8,
  ),
  movie(
    banner: 'moana2.png',
    poster: 'moana.png',
    genre: "Animasi, Komedi",
    nama: 'MOANA 2',
    rating: 9,
  ),
  movie(
    banner: 'gladiator.png',
    poster: 'gladiator2.jpg',
    genre: "Action, Adventure",
    nama: 'GLADIATOR II',
    rating: 8,
  ),
  movie(
    banner: 'redone.jpg',
    poster: 'redone.png',
    genre: "Action, Adventure",
    nama: 'RED ONE',
    rating: 9,
  )
];
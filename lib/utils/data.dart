// import '../utils/data.dart';
import '../models/app_model.dart';
import '../models/book_model.dart';
import '../models/game_model.dart';

List<AppModel> testAppsList = [
  AppModel(
    logoUrl: "http://abcd.com/1.jpg",
    title: "NFT Universe",
    description: "NFT Marketplace.",
    category: AppCategory.Finance,
    appSize: "28 Mb",
  ),
  AppModel(
    logoUrl: "http://abcd.com/2.jpg",
    title: "P-Suite",
    description:
        "Productivity Apps Suite, Decentralized version of Microsoft Office Suite",
    category: AppCategory.Productivity,
    appSize: "32 Mb",
  ),
  AppModel(
    logoUrl: "http://abcd.com/1.jpg",
    title: "NFT Universe",
    description: "NFT Marketplace.",
    category: AppCategory.Finance,
    appSize: "28 Mb",
  ),
  AppModel(
    logoUrl: "http://abcd.com/2.jpg",
    title: "P-Suite",
    description:
        "Productivity Apps Suite, Decentralized version of Microsoft Office Suite",
    category: AppCategory.Productivity,
    appSize: "32 Mb",
  )
];

List<GameModel> testGamesList = [
  GameModel(
    logoUrl: "http://abcd.com/1.jpg",
    title: "All Champions 2024",
    description:
        "2024 Game Edition for a Football leagues, championships worldwide recognized by FIFA.",
    category: GameCategory.Sport,
    gameSize: "28 Mb",
  ),
  GameModel(
    logoUrl: "http://abcd.com/2.jpg",
    title: "CosmicFactions Cards",
    description:
        "Card game edition for Cosmicfactions Pigeons. Earn NFTs and more",
    category: GameCategory.Reflexion,
    gameSize: "70 Mb",
  ),
];

List<BookModel> testBooksList = [
  BookModel(
    isbn: "xxxxx",
    bookType: BookType.Text,
    coverUrl: "http://abcd.com/2.jpg",
    title: "Fondamentaux d'un état Féderal Africain",
    description: "Fondamentaux d'un état Féderal Africain",
    genre: BookGenre.Science,
    authors: ["Cheikh Anta Diop"],
    publicationDate: 1970,
    publicationLanguage: PublicationLanguage.French,
    price: 22,
  ),
  BookModel(
    isbn: "xxxxz",
    bookType: BookType.Text,
    coverUrl: "http://abcd.com/2.jpg",
    title: "Harry Snow: the lord of Hogteros",
    description: "Magic and throne stories",
    genre: BookGenre.Cartoon,
    authors: ["JK John"],
    publicationDate: 2002,
    publicationLanguage: PublicationLanguage.English,
    price: 21,
  ),
  BookModel(
      isbn: "xxyyzz",
      bookType: BookType.Text,
      coverUrl: "http://abcd.com/2.jpg",
      title: "The Blockchain Rise",
      description:
          "Exploring how blockchain technologies are taking over the world and changing every aspect of the society ",
      genre: BookGenre.Science,
      authors: ["Fortune Wade"],
      publicationDate: 2021,
      publicationLanguage: PublicationLanguage.English,
      price: 23)
];

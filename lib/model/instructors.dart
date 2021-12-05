class Instructor {
  final String? name;
  final String? type;
  final String? age;
  final String? distance;
  final String? address;
  final bool? isMale;
  final String? userImage;
  final String? userName;
  final String? datetime;
  final String? description;
  final String? image;
  final List<String>? images;
  Instructor({
    this.name,
    this.type,
    this.age,
    this.distance,
    this.datetime,
    this.address,
    this.description,
    this.isMale,
    this.userImage,
    this.userName,
    this.image,
    this.images,
  });
}

List<Instructor> instructorList = [
  Instructor(
    name: "Andrew",
    type: "Fitness Trainer",
    isMale: true,
    address: "2105  Westwood Avenue",
    age: "29",
    datetime: "Jan 26, 2020",
    description:"I will help you to change ",
    distance: "5.6",
    userImage: "assets/user2.jpg",
    userName: "AARU",
    image: "assets/Andrew.png",
    images: [
      "assets/Andrew.png",
      "assets/Andrew.png",
      "assets/Andrew.png",
    ],
  ),
  Instructor(
    name: "Andrew",
    type: "Fitness Trainer",
    isMale: true,
    address: "2105  Westwood Avenue",
    age: "29",
    datetime: "Jan 26, 2020",
    description:"I will help you to change ",
    distance: "5.6",
    userImage: "assets/user2.jpg",
    userName: "AARU",
    image: "assets/Andrew.png",
    images: [
      "assets/Andrew.png",
      "assets/Andrew.png",
      "assets/Andrew.png",
    ],
  ),
];

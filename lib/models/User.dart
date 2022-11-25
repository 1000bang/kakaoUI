class User {
  var backgroundImg;
  var name;
  var intro;

  User({this.backgroundImg, required this.name, required this.intro});
}

final String _urlPrefix1 =
    "https://raw.githubusercontent.com/1000bang/repoTest/main/";
User me = User(
    backgroundImg: "${_urlPrefix1}son.gif",
    name: "천병재",
    intro: "sonaldo");

List<User> friends = [
  User(
      backgroundImg: "${_urlPrefix1}홍길동.png",
      name: "홍길동",
      intro: "Cant call father as father"),
  User(
      backgroundImg: "${_urlPrefix1}김두한.png",
      name: "김두한",
      intro: "김또깡"),
  User(
      backgroundImg: "${_urlPrefix1}심영.gif",
      name: "심영",
      intro: "No more dick"),
  User(
      backgroundImg: "${_urlPrefix1}최익현.png",
      name: "최익현",
      intro: "남천동 살고싶다"),
  User(
      backgroundImg: "${_urlPrefix1}구상만.png",
      name: "구상만",
      intro: "식사 잡숴? "),
  User(
      backgroundImg: "${_urlPrefix1}전요한.png",
      name: "전요한",
      intro: "교회 올 사람~"),
  User(
      backgroundImg: "${_urlPrefix1}곽철용.png",
      name: "곽철용",
      intro: "그때 죽을걸"),
  User(
      backgroundImg: "${_urlPrefix1}평경장.png",
      name: "평경장",
      intro: "fake with my soul"),
  User(
      backgroundImg: "${_urlPrefix1}정마담.png",
      name: "정마담",
      intro: "i can shoot !"),
  User(
      backgroundImg: "${_urlPrefix1}이중구.png",
      name: "이중구",
      intro: "막담 "),
  User(
      backgroundImg: "${_urlPrefix1}정청.gif",
      name: "정청",
      intro: "드루와 "),
];

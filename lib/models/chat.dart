class Chat{
  String image;
  String title;
  String content;
  String time;
  String count;

  Chat({required this.image, required this.title, required this.content, required this.time, required this.count});

}

//chat 샘플데이터 만들기

final String _urlPrefix = "https://raw.githubusercontent.com/1000bang/repoTest/main/";

List<Chat> chats = [
  Chat(
    image:"${_urlPrefix}홍길동.png",
        title:"홍길동",
    content: "오늘 저녁에 한국 축구해요?",
    time: "오전 09시 30분",
    count: "0"
  ),
  Chat(
      image:"${_urlPrefix}김두한.png",
      title:"김두한",
      content: "맥북 사달라 ",
      time: "오전 11시 30분",
      count: "3"
  ),

];
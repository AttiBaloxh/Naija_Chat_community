class Chat {
  final String name, lastMessage, image, time;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
  });
}

List chatsData = [
  Chat(
    name: "Admin",
    lastMessage: "Hi Dude How Are you ?",
    image: "assets/images/user.jpg",
    time: "3m ago",
  ),
  Chat(
    name: "Pro User",
    lastMessage: "Dude Please Reply are you available?",
    image: "assets/images/user_2.jpg",
    time: "8m ago",
  ),
  Chat(
    name: "Chon Alex ",
    lastMessage: "Do You Have any Update",
    image: "assets/images/user_3.jpg",
    time: "5d ago",
  ),
  Chat(
    name: "Jhon Wick",
    lastMessage: "Thanks For your Update",
    image: "assets/images/user_4.jpg",
    time: "5d ago",
  ),
  // Chat(
  //   name: "Pallavi",
  //   lastMessage: "Thanks",
  //   image: "assets/images/user_5.png",
  //   time: "6d ago",
  // ),
  // Chat(
  //   name: "Arvindh",
  //   lastMessage: "Hope you are doing well...",
  //   image: "assets/images/user.png",
  //   time: "3m ago",
  // ),
  // Chat(
  //   name: "Haswanth",
  //   lastMessage: "Hello Charan! I am...",
  //   image: "assets/images/user_2.png",
  //   time: "8m ago",
  // ),
  // Chat(
  //   name: "Yash Anna",
  //   lastMessage: "Do you have update...",
  //   image: "assets/images/user_3.png",
  //   time: "5d ago",
  // ),
  // Chat(
  //   name: "Pallavi",
  //   lastMessage: "Thanks",
  //   image: "assets/images/user_5.png",
  //   time: "6d ago",
  // ),
  // Chat(
  //   name: "Arvindh",
  //   lastMessage: "Hope you are doing well...",
  //   image: "assets/images/user.png",
  //   time: "3m ago",
  // ),
  // Chat(
  //   name: "Haswanth",
  //   lastMessage: "Hello Charan! I am...",
  //   image: "assets/images/user_2.png",
  //   time: "8m ago",
  // ),
  // Chat(
  //   name: "Yash Anna",
  //   lastMessage: "Do you have update...",
  //   image: "assets/images/user_3.png",
  //   time: "5d ago",
  // ),
];

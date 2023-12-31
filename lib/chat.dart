import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final NetworkImage image;
  final String message;
  final String time;

  const ChatModel({
    required this.name,
    required this.image,
    required this.message,
    required this.time,
  });
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? search;

  bool SearchCompare(ChatModel chat) =>
      search == null ||
      chat.name
          .trim()
          .toLowerCase()
          .startsWith(search.toString().trim().toLowerCase());

  final List<ChatModel> chats = [
    const ChatModel(
      name: "Abdo Wael Mohamed",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
    const ChatModel(
      name: "Ahmed Abdo ",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hey can you help me with this",
      time: "8:31 AM",
    ),
    const ChatModel(
      name: "Mohammed Ahmed",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "can i ask you something?",
      time: "2:40 PM",
    ),
    const ChatModel(
      name: "Ali Adel",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
    const ChatModel(
      name: "Mostafa Ibrahim",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
    const ChatModel(
      name: "Abdo",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
    const ChatModel(
      name: "Ahmed",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hey can you help me with this",
      time: "8:31 AM",
    ),
    const ChatModel(
      name: "Mohamed",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "can i ask you something?",
      time: "2:40 PM",
    ),
    const ChatModel(
      name: "Ali",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
    const ChatModel(
      name: "Mostafa",
      image: NetworkImage(
        'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
      ),
      message: "Hello my brother, my name is Abdo",
      time: "9:20 PM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "chat",
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.black87,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 20.0,
            ),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.black87,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(
                onChanged: (value) {
                  setState(() {
                    search = value;
                  });
                },
                backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                elevation: MaterialStateProperty.all(3.0),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                ),
                leading: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search",
                hintStyle: MaterialStateProperty.all(
                  const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(chats[index]),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15.0,
                    );
                  },
                  itemCount: chats.length,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => buildChatItem(chats[index]),
                separatorBuilder: (context, index) {
                  if (SearchCompare(chats[index])) {
                    return const SizedBox(
                      height: 15.0,
                    );
                  } else {
                    return const SizedBox(
                      height: 0.0,
                    );
                  }
                },
                itemCount: chats.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem(ChatModel chat) {
    if (SearchCompare(chat)) {
      return Row(
        children: [
          // photo
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                      end: 5.0,
                      bottom: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        chat.message,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      width: 55.0,
                      child: Text(
                        chat.time,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return const SizedBox(
        height: 0.0,
        width: 0.0,
      );
    }
  }

  Widget? buildStoryItem(ChatModel chat) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.116a21ea40b3f9ab2bf3678c1132be83?rik=DzsEnLMC%2f5lIfw&pid=ImgRaw&r=0',
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(
                  end: 5.0,
                  bottom: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 60.0,
            child: Text(
              chat.name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      );
}

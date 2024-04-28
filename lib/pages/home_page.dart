import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Votre Story', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Horeb', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Olive', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Arauld', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'venace', 'imageUrl': 'https://via.placeholder.com/150'},
    {'name': 'Missi', 'imageUrl': 'https://via.placeholder.com/150'},
  ];

  final List<Map<String, String>> footballPlayers = [
    {'name': 'Lionel Messi', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Cristiano Ronaldo', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Neymar Jr', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Kylian Mbappé', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Robert Lewandowski', 'image': 'https://via.placeholder.com/150'},
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.add_box_outlined, size: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                "assets/images/Instagram.png",
                width: 150,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.brightness_5),
                  Icon(Icons.light_mode),
                  Icon(Icons.message),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: users.map((user) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(user['imageUrl']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "${user['name']}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          Column(
            children: footballPlayers.map((player) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(player['image']!),
                    ),
                    title: Text(player['name']!),
                    subtitle: Text("Football Player"),
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(player['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Liked by 22 people"),
                        Text("View comments"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/images.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Column(
                            children: [
                              Text("Add a comment"),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.send),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              );
            }).toList(),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.search, size: 40),
            Icon(Icons.ondemand_video_outlined, size: 40),
            Icon(Icons.favorite_border, size: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image4.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

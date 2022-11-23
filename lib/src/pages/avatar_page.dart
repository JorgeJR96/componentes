import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.green,
        actions: [
          Container(
            padding: EdgeInsets.all(6.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/payday/images/a/ae/DallasIcon.jpg/revision/latest?cb=20140220175829'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('AA'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage(
              'https://giphy.com/gifs/youtube-loading-gif-3o7bu3XilJ5BOiSGic'),
          image: NetworkImage(
              'https://static.wikia.nocookie.net/p__/images/2/2c/Payday-2-dallas-heist-gry-art-plakat-tkanina-jedwabna-tkanina-druku-Wystr-j-ciany-naklejki-cienne.jpg_640x640.jpg/revision/latest?cb=20180818132432&path-prefix=protagonist'),
          fadeInDuration: Duration(milliseconds: 2),
        ),
      ),
    );
  }
}

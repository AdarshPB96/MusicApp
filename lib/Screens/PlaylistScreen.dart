import 'package:flutter/material.dart';
import 'package:music_application_1/Screens/Addplaylist.dart';
import 'package:music_application_1/widget/functions.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    List<Map<String, dynamic>> items = [
      {
        "name": "Playlist 1",
        "image": 'assets/images/photo-Playlist.jpeg',
        "Songs": '(14)'
      },
      {
        "name": "Playlist 2",
        "image": 'assets/images/mask-boy-listening-music-neon-4k-gm.jpg',
        "Songs": '(16)'
      },
      {
        "name": "Playlist 3",
        "image": 'assets/images/love.jpg',
        "Songs": '(12)'
      },
      {
        "name": "Playlist 4",
        "image": 'assets/images/photo-Playlist.jpeg',
        "Songs": '(11)'
      },
      {
        "name": "Playlist 5",
        "image": 'assets/images/mask-boy-listening-music-neon-4k-gm.jpg',
        "Songs": '(10)'
      },
      {
        "name": "Playlist 6",
        "image": 'assets/images/love.jpg',
        "Songs": '(18)'
      },
      {
        "name": "Playlist 7",
        "image": 'assets/images/love.jpg',
        "Songs": '(17)'
      },
      {
        "name": "Playlist 8",
        "image": 'assets/images/photo-Playlist.jpeg',
        "Songs": '(16)'
      },
      {
        "name": "Playlist 9",
        "image": 'assets/images/mask-boy-listening-music-neon-4k-gm.jpg',
        "Songs": '(18)'
      },
      {
        "name": "Playlist 10",
        "image": 'assets/images/photo-Playlist.jpeg',
        "Songs": '(8)'
      },
      {
        "name": "Playlist 11",
        "image": 'assets/images/love.jpg',
        "Songs": '(6)'
      },
      {
        "name": "Playlist 12",
        "image": 'assets/images/mask-boy-listening-music-neon-4k-gm.jpg',
        "Songs": '(17)'
      }
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Playlists'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddPlaylistScreen()));
                },
                icon: Icon(
                  Icons.playlist_add,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 25,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Column(children: [
                    Image.asset(
                      items[index]['image'],
                      width: 150,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text(
                      items[index]['name'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      items[index]['Songs'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaylistNavigatedScreen(
                              name: items[index]['name']),
                        ));
                  },
                );
              },
            ),
          ),
        ));
  }
}

class PlaylistNavigatedScreen extends StatelessWidget {
  String name;
  PlaylistNavigatedScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  onTap: () => AddPlaylistScreen(), child: Text('Edit')),
              PopupMenuItem(onTap: () {}, child: Text('Delete Playlist'))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PlaylistSonglist(title: const [
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottam',
              'Moongil Thottama',
              'Moongil Thottam',
            ], subtitle: [
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
              'A. R. Rahman',
            ], images: [
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg',
              'assets/images/mugilthottam.jpg'
            ]),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:music_application_1/functions/functions.dart';

// class PlaylistScreen extends StatefulWidget {
//   const PlaylistScreen({super.key});

//   @override
//   State<PlaylistScreen> createState() => _PlaylistScreenState();
// }

// class _PlaylistScreenState extends State<PlaylistScreen> {
//   @override
//   Widget build(BuildContext context) {
//     double Width = MediaQuery.of(context).size.width;
//     double Height = MediaQuery.of(context).size.height;
//     List<Playlist> playlists = [];
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
//         title: Text('Playlist'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.playlist_add,
//               size: 35,
//             ),
//             color: Colors.white,
//           ),
//           GridView.count(
//               crossAxisCount: 2,
//               children: List.generate(
//                   playlists.length,
//                   (index) => GestureDetector(
//                       onTap: () {},
//                       child: Container(
//                         margin: EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 5.0,
//                                   offset: Offset(0, 3))
//                             ]),
//                         child: Column(
//                           children: [
//                             Expanded(
//                                 child: ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.asset(
//                                 'assets/images/New-Hits-Playlist.jpeg',
//                                 //  playlists[index].image,
//                                 fit: BoxFit.cover,
//                               ),
//                             )),
//                             SizedBox(height: 8),
//                             Text(
//                               'Name',
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                             // playlists[index].name,
//                           ],
//                         ),
//                       ))))
//         ],
//       ),
//     );
//   }
// }

// body: Column(
//   children: [
//     IconButton(
//       onPressed: () {},
//       icon: Icon(
//         Icons.playlist_add,
//         size: 35,
//       ),
//       color: Colors.white,
//     ),
//     Expanded(
//       child: GridView.count(
//         crossAxisCount: 2,
//         children: List.generate(
//           playlistlist.length,
//           (index) => GestureDetector(
//             onTap: () {},
//             child: Container(
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 5.0,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.asset(
//                         'assets/images/Aga Naga.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'NAME',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ],
// ),

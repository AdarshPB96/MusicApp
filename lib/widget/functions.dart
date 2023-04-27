import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_application_1/Screens/FavouritesScreen.dart';
import 'package:music_application_1/Screens/NowPlayingScreen.dart';
import 'package:music_application_1/Screens/PlaylistScreen.dart';

import 'package:music_application_1/Screens/SearchScreen.dart';
import 'package:music_application_1/Screens/home.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

// class Horizontallistview extends StatelessWidget {
//   final List<Widget> items;

//   Horizontallistview({required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: MediaQuery.of(context).size.height * 0.17,
//         constraints:
//             BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: items.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Row(
//               children: [
//                 SizedBox(width: 30),
//                 items[index],
//               ],
//             );
//           },
//         ));
//   }
// }

class SongsList extends StatefulWidget {
  final List<String> title;
  final List<String> subtitle;
  final List<String> images;

  SongsList(
      {required this.title, required this.subtitle, required this.images});

  @override
  State<SongsList> createState() => _SongsListState();
}


class _SongsListState extends State<SongsList> {
  
  bool isFavorite = false;
  void toggleFavourite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.title.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const NowPlaying(),
            ));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Image.asset(
            widget.images[index],
            width: 100,
            height: 100,
          ),
          title: Text(
            widget.title[index],
            style: const TextStyle(color: Colors.red),
          ),
          subtitle: Text(widget.subtitle[index],
              style: const TextStyle(color: Colors.red)),
          trailing: IconButton(
              onPressed: () {
                toggleFavourite();
              },
              icon: isFavorite
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
        );
      },
    );
  }
}

//  edited listview for playlist

class PlaylistSonglist extends StatefulWidget {
  final List<String> title;
  final List<String> subtitle;
  final List<String> images;
  const PlaylistSonglist(
      {required this.title, required this.subtitle, required this.images});

  @override
  State<PlaylistSonglist> createState() => _PlaylistSonglistState();
}

class _PlaylistSonglistState extends State<PlaylistSonglist> {
  bool isFavorite = false;
  void toggleFavourite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.title.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const NowPlaying(),
            ));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Image.asset(
            widget.images[index],
            width: 100,
            height: 100,
          ),
          title: Text(
            widget.title[index],
            style: const TextStyle(color: Colors.red),
          ),
          subtitle: Text(widget.subtitle[index],
              style: const TextStyle(color: Colors.red)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {},
                    child: const Text('Remove From Playlist'),
                  )),
                ],
              ),
              IconButton(
                  onPressed: () {
                    toggleFavourite();
                  },
                  icon: isFavorite
                      ? const Icon(Icons.favorite, color: Colors.red)
                      : const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
            ],
          ),
        );
      },
    );
  }
}

//Nav Bar

// class BottomNavBar extends StatefulWidget {
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentindex = 0;
//   final screens = [
//     HomeScreen(),
//     SearchScreen(),
//     PlaylistScreen(),
//     FavouritesScreen()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body : IndexedStack(
//         index: _currentindex,
//         children: screens,
//       ),
//     bottomNavigationBar:
//      BottomNavigationBar(
//       currentIndex: _currentindex,
//       onTap: (int index) {
//         setState(() {
//           _currentindex = index;
//         });
//       },
//       // items: [
//       //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//       //   BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//       //   BottomNavigationBarItem(
//       //       icon: Icon(Icons.library_music), label: 'Playlist'),
//       //   BottomNavigationBarItem(
//       //       icon: Icon(Icons.favorite), label: 'Favourite'),
//       // ]

//       items: [
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: Colors.red,
//             ),
//             label: 'Home'),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.search,
//               color: Colors.red,
//             ),
//             label: 'Search'),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.library_music,
//             color: Colors.red,
//           ),
//           label: 'Playlist',
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.favorite,
//               color: Colors.red,
//             ),
//             label: 'Favourite'),
//       ],
//      )
//     );

//   }
// }

//AddPlaylist

class Playlist extends StatefulWidget {
  String? name;
  File? image;
  // final songCount;
  Playlist({this.name, this.image});
  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  final picker = ImagePicker();
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // nameController.text = widget.name;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final PickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        widget.image = File(PickedFile.path);
      });
    }
  }

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: _pickImage,
            child: Container(
              height: 200,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: widget.image != null
                      ? DecorationImage(
                          image: FileImage(widget.image!),
                          fit: BoxFit.cover,
                        )
                      : null),
              child: widget.image == null
                  ? Icon(Icons.image, size: 40, color: Colors.grey[400])
                  : null,
            ),
          ),
          // SizedBox(
          //   width: 16,
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  height: 60,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        hintText: 'Enter Name',
                        fillColor: Colors.white,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        suffix: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              text = nameController.text;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(20, 20),
                              backgroundColor: Colors.red),
                          child: const Icon(Icons.done),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 4),
                // Text(
                //   '${widget.songCount} songs',
                //   style: TextStyle(fontSize: 16, color: Colors.grey),
                // ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//                   height: MediaQuery.of(context).size.height * 0.17,
//                   width: MediaQuery.of(context).size.width * 0.35,
//                   color: Colors.white,
//                 )
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.17,
//                   width: MediaQuery.of(context).size.width * 0.35,
//                   color: Colors.white,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.17,
//                   width: MediaQuery.of(context).size.width * 0.35,
// //                   color: Colors.white,
//
//

//PlaylistNavigatedScreen
// ---------------------//


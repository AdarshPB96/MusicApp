import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_application_1/Screens/PlaylistScreen.dart';
import 'package:music_application_1/widget/functions.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool isPlaying = false;
  double progress = 0.0;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Now Playing'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  'assets/images/mugilthottam.jpg',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Song Name',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Artist Name',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlaylistScreen(),
                    ));
                  },
                  icon: Icon(
                    Icons.playlist_add,
                    color: Colors.white,
                    size: 35,
                  )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.white,
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 25)),
          LinearProgressIndicator(
            value: progress / 100,
            minHeight: 6.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: Colors.red,
                    size: 55,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    size: 55,
                  ),
                  color: Colors.red,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      color: Colors.red,
                      size: 55,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shuffle),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.repeat),
                  color: Colors.red,
                )
              ],
            ),
          ),
        ]));
  }
}











// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class NowPlaying extends StatefulWidget {
//   const NowPlaying({super.key});

//   @override
//   State<NowPlaying> createState() => _NowPlayingState();
// }

// class _NowPlayingState extends State<NowPlaying> {
//   bool isPlaying = false;
//   double progress = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     double Width = MediaQuery.of(context).size.width;
//     double Height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Now Playing'),
//           leading: Icon(Icons.arrow_back),
//           actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
//         ),
//         body: Center(
//           child: Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 150,
//                   backgroundImage: AssetImage(
//                     'assets/images/New-Hits-Playlist.jpeg',
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Song Name',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 Text(
//                   'Artist Name',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.playlist_add,
//                           color: Colors.white,
//                           size: 35,
//                         )),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.favorite),
//                       color: Colors.white,
//                     )
//                   ],
//                 ),

//////////////////////
//                 Padding(padding: EdgeInsets.only(top: 25)),
//                 LinearProgressIndicator(
//                   value: progress / 100,
//                   minHeight: 6.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 25,
//                     right: 20,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.skip_previous,
//                           color: Colors.red,
//                           size: 55,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.play_arrow_rounded,
//                           size: 55,
//                         ),
//                         color: Colors.red,
//                       ),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.skip_next,
//                             color: Colors.red,
//                             size: 55,
//                           )),
//                     ],
//                   ),
//                 ),

/////////////////////////
//                 Padding(
//                   padding: const EdgeInsets.only(top: 25),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.shuffle),
//                         color: Colors.red,
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.repeat),
//                         color: Colors.red,
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }


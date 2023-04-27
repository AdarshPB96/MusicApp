import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:music_application_1/Screens/AboutUs.dart';
import 'package:music_application_1/Screens/FavouritesScreen.dart';
import 'package:music_application_1/Screens/MostlyPlayed.dart';
import 'package:music_application_1/Screens/PlaylistScreen.dart';
import 'package:music_application_1/Screens/Privacy.dart';
import 'package:music_application_1/Screens/RecentlyPlayed.dart';
import 'package:music_application_1/Screens/SearchScreen.dart';

import 'package:music_application_1/Screens/Share.dart';
import 'package:music_application_1/Screens/Terms.dart';
import 'package:music_application_1/widget/Bottom.dart';
import 'package:music_application_1/widget/functions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  // dynamic _currentindex = 0;
  // final screens = [
  //   HomeScreen(),
  //   SearchScreen(),
  //   PlaylistScreen(),
  //   FavouritesScreen()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Music'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: const EdgeInsets.only(top: 40),
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //   ), //BoxDecoration
            // child: UserAccountsDrawerHeader(
            //   decoration: BoxDecoration(color: Colors.green),
            //   accountName: Text(
            //     "Abhishek Mishra",
            //     style: TextStyle(fontSize: 18),
            //   ),
            //   // accountEmail: Text("abhishekm977@gmail.com"),
            //   currentAccountPictureSize: Size.square(50),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundColor: Color.fromARGB(255, 165, 255, 137),
            //     child: Text(
            //       "A",
            //       style: TextStyle(fontSize: 30.0, color: Colors.blue),
            //     ), //Text
            //   ), //circleAvatar
            // ), //UserAccountDrawerHeader
            // ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.privacy_tip,color: Colors.white,),
              title: const Text(' Privacy ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrivacyScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.article_outlined,color: Colors.white,),
              title: const Text('Tearms And Conditions ',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outlined,color: Colors.white,),
              title: const Text('About Us ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutUsScreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.share,color: Colors.white,),
              title: const Text(' Share ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShareScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Library',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              height: 70,
              width: 500,
              
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                ),

                
                SizedBox(
                  height: 60,
                  width: 150,
                  child: GradientElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RecentlyPlayed(),
                      ));
                    },
                    style: GradientElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 243, 6, 6),
                          Color.fromARGB(255, 0, 175, 173),
                        ],
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Text("Recently Played"),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 60,
                  width: 150,
                  child: GradientElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MostlyPlayed(),
                      ));
                    },
                    style: GradientElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 243, 6, 6),
                          Color.fromARGB(255, 0, 175, 173),
                        ],
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Text("Mostly Played"),
                  ),
                ),

                 SizedBox(
                  width: 30,
                ),
            
                SizedBox(
                  height: 60,
                  width: 150,
                  child: GradientElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FavouritesScreen(),
                      ));
                    },
                    style: GradientElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 243, 6, 6),
                          Color.fromARGB(255, 0, 175, 173),
                        ],
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Text("Favourites"),
                  ),
                ),
                
                SizedBox(width: 10,),

               
               
              ],
            ),

                ],
              ),

            ),
            

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // SizedBox(
            //     //   width: 10,
            //     // ),

                
            //     SizedBox(
            //       height: 60,
            //       width: 150,
            //       child: GradientElevatedButton(
            //         onPressed: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //             builder: (context) => RecentlyPlayed(),
            //           ));
            //         },
            //         style: GradientElevatedButton.styleFrom(
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(10)),
            //           gradient: const LinearGradient(
            //             colors: [
            //               Color.fromARGB(255, 243, 6, 6),
            //               Color.fromARGB(255, 0, 175, 173),
            //             ],
            //             // begin: Alignment.topCenter,
            //             // end: Alignment.bottomCenter,
            //           ),
            //         ),
            //         child: const Text("Recently Played"),
            //       ),
            //     ),
            //     // SizedBox(
            //     //   width: 10,
            //     // ),
            //     SizedBox(
            //       height: 60,
            //       width: 150,
            //       child: GradientElevatedButton(
            //         onPressed: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //             builder: (context) => MostlyPlayed(),
            //           ));
            //         },
            //         style: GradientElevatedButton.styleFrom(
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(10)),
            //           gradient: const LinearGradient(
            //             colors: [
            //               Color.fromARGB(255, 243, 6, 6),
            //               Color.fromARGB(255, 0, 175, 173),
            //             ],
            //             // begin: Alignment.topCenter,
            //             // end: Alignment.bottomCenter,
            //           ),
            //         ),
            //         child: const Text("Mostly Played"),
            //       ),
            //     ),
               
               
            //   ],
            // ),

            // Container(
            //     height: MediaQuery.of(context).size.height * 0.21,
            //     constraints:
            //         BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Row(children: [
            //           SizedBox(width: 30),
            //           Container(
            //             height: MediaQuery.of(context).size.height * 0.25,
            //             width: MediaQuery.of(context).size.width * 0.35,
            //             child: Column(children: [
            //               Image.asset(
            //                 'assets/images/New-Hits-Playlist.jpeg',
            //                 fit: BoxFit.cover,
            //               ),
            //               Text(
            //                 "Recently Played",
            //                 style: TextStyle(color: Colors.white),
            //               ),
            //             ]),
            //           )
            //         ]);
            //       },
            //     )),

            // Horizontallistview(items: [
            //   Container(
            //       height: MediaQuery.of(context).size.height * 0.17,
            //       width: MediaQuery.of(context).size.width * 0.35,
            //       child: Image.asset('assets/images/New-Hits-Playlist.jpeg')),
            //   Container(
            //       height: MediaQuery.of(context).size.height * 0.17,
            //       width: MediaQuery.of(context).size.width * 0.35,
            //       child: Image.asset(
            //           'assets/images/Old-Is-Gold-Malayalam-Hits-Malayalam-2019-20191211112610-500x500.jpg')),
            //   Container(
            //       height: MediaQuery.of(context).size.height * 0.17,
            //       width: MediaQuery.of(context).size.width * 0.35,
            //       child:
            //           Image.asset('assets/images/ClassicHits_1000x1000-1.jpg')),
            //   Container(
            //       height: MediaQuery.of(context).size.height * 0.17,
            //       width: MediaQuery.of(context).size.width * 0.35,
            //       child: Image.asset('assets/images/New-Hits-Playlist.jpeg'))
            //
            //



            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text(
                'Songs',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            // Expanded(
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         leading: Image.asset(
            //           'assets/images/Aga Naga.jpg',
            //           height: 30,
            //           width: 30,
            //         ),
            //         title: Text(
            //           'sdukgkuysd',
            //           style: TextStyle(color: Colors.red),
            //         ),
            //       );
            //     },
            //   ),
            // )

            Expanded(
              child: SongsList(title: const [
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
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),

      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     iconSize: 27,
      //     backgroundColor: Colors.white,
      //     currentIndex: _currentindex,
      //     onTap: (index) {
      //       setState(() {
      //         _currentindex = index;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.red,
      //           ),
      //           label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.search,
      //             color: Colors.red,
      //           ),
      //           label: 'Search'),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.library_music,
      //           color: Colors.red,
      //         ),
      //         label: 'Playlist',
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.favorite,
      //             color: Colors.red,
      //           ),
      //           label: 'Favourite'),
      //     ]),
    );
  }
}


// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentindex = 0;
//   final List<Widget> _tabs = [
//     HomeScreen(),
//     SearchScreen(),
//     PlaylistScreen(),
//     FavouritesScreen()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//         currentIndex: _currentindex,
//         onTap: (int index) {
//           setState(() {
//             _currentindex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.library_music), label: 'Playlist'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: 'Favourite'),
//         ]);
//   }
// }
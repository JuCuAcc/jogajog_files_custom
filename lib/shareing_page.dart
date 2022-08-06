import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'model/Choice.dart';
import 'model/SelectCard.dart';

/// import 'package:multiple_search_selection/multiple_search_selection.dart';

/// import 'constants.dart';
import 'model/User.dart';

class SharingPage extends StatefulWidget {
  final _SharingPageState _state = _SharingPageState();

  _SharingPageState get state => _state;

  SharingPage({Key? key}) : super(key: key);

  @override
  State<SharingPage> createState() => _SharingPageState();
}

class _SharingPageState extends State<SharingPage> {
  bool isShowable = false;
  bool isShowableReceiver = true;
  final receiverController = TextEditingController();

  final List<User> _users = [
    User(
        1,
        'Elliana Palacios',
        '@elliana',
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
        false),
    User(
        2,
        'Kayley Dwyer',
        'kayley@gtrbd.com',
        'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
        false),
    User(
        3,
        'Kathleen Mcdonough',
        'kathleen@gtrbd.net',
        'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
        false),
    User(
        4,
        'Kathleen Dyer',
        'kathleen@gmail.com',
        'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387',
        false),
    User(
        5,
        'Mikayla Marquez',
        'mikayla@gtrbd.net',
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        6,
        'Kiersten Lange',
        'kiersten@gtrbd.net',
        'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        7,
        'Carys Metz',
        'metz@ggtrbd.net',
        'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        8,
        'Ignacio Schmidt',
        'schmidt@gtrbd.net',
        'https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        9,
        'Clyde Lucas',
        'clyde@gtrbd.net',
        'https://images.unsplash.com/photo-1569443693539-175ea9f007e8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        10,
        'Mikayla Marquez',
        'mikayla@gtrbd.com',
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        33, 'Iftekhar Hasan', 'iftekhar@gtrbd.net', 'assets/sample.png', false),
    User(
        11,
        'Elliana Palacios',
        '@elliana',
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
        false),
    User(
        12,
        'Kayley Dwyer',
        '@kayley',
        'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
        false),
    User(
        13,
        'Kathleen Mcdonough',
        '@kathleen',
        'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
        false),
    User(
        14,
        'Kathleen Dyer',
        '@kathleen',
        'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387',
        false),
    User(
        15,
        'Mikayla Marquez',
        '@mikayla',
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        16,
        'Kiersten Lange',
        '@kiersten',
        'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        17,
        'Carys Metz',
        '@metz',
        'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        18,
        'Ignacio Schmidt',
        '@schmidt',
        'https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        19,
        'Clyde Lucas',
        '@clyde',
        'https://images.unsplash.com/photo-1569443693539-175ea9f007e8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        20,
        'Mikayla Marquez',
        '@mikayla',
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false)
  ];

  final List<Choice> choices = <Choice>[
    const Choice(title: 'Home', icon: Icons.home),
    const Choice(title: 'Contact', icon: Icons.contacts),
    const Choice(title: 'Map', icon: Icons.map),
    const Choice(title: 'Phone', icon: Icons.phone),
    const Choice(title: 'Camera', icon: Icons.camera_alt),
    const Choice(title: 'Setting', icon: Icons.settings),
    const Choice(title: 'Album', icon: Icons.photo_album),
    const Choice(title: 'WiFi', icon: Icons.wifi),
  ];

  List<User> _foundedUsers = [];
  List<User> selectedReceiver = [];

  removeSelectedUser(int index) {
    selectedReceiver.removeAt(index);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = _users
          .where((user) =>
              user.name.toLowerCase().contains(search) ||
              user.username.toLowerCase().contains(search) ||
              user.id.toString().contains(search))
          .toList();
      if (_foundedUsers.isNotEmpty) {
        isShowable = true;
      } else {
        isShowable = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isShowable) {
          isShowable = false;
          setState(() => {});
          return false;
        }
        return true;
      },
      child: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: SizedBox(
                    height: isShowable ? 300 : 60,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: isShowable ? 20 : 10),
                          child: SizedBox(
                            height: 38,
                            child: TextField(
                              onChanged: (txt) => onSearch(txt),

                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              cursorColor: Colors.white,

                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.blue.shade200,
                                  contentPadding: const EdgeInsets.all(10),

                                  /// prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
                                  prefixIcon: const Icon(Icons.search,
                                      color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(
                                      fontSize: 14,

                                      /// color: Colors.grey.shade500
                                      color: Colors.grey.shade500),
                                  hintText: "Search Receivers"),

                              /// Search Receiver
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        isShowable
                            ? Expanded(
                                child: SizedBox(
                                  child: _foundedUsers.isNotEmpty
                                      ? ListView.builder(
                                          itemCount: _foundedUsers.length,
                                          itemBuilder: (context, index) {
                                            return Slidable(
                                              actionPane:
                                                  const SlidableDrawerActionPane(),
                                              actionExtentRatio: 0.25,
                                              child: userComponent(
                                                  user: _foundedUsers[index]),
                                              actions: <Widget>[
                                                IconSlideAction(
                                                  /// Remove Unnecessary new Keyword
                                                  caption: 'Archive',
                                                  color: Colors.transparent,
                                                  icon: Icons.archive,

                                                  onTap: () => print("archive"),
                                                ),
                                                IconSlideAction(
                                                  caption: 'Share',
                                                  color: Colors.transparent,
                                                  icon: Icons.share,
                                                  onTap: () => print('Share'),
                                                ),
                                              ],
                                              secondaryActions: <Widget>[
                                                IconSlideAction(
                                                  caption: 'More',
                                                  color: Colors.transparent,
                                                  icon: Icons.more_horiz,
                                                  onTap: () => print('More'),
                                                ),
                                                IconSlideAction(
                                                  caption: 'Delete',
                                                  color: Colors.transparent,
                                                  icon: Icons.delete,
                                                  onTap: () => print('Delete'),
                                                ),
                                              ],
                                            );
                                          })
                                      : const Center(
                                          child: Text(
                                          "No users found",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    padding: const EdgeInsets.all(2),
                    crossAxisCount: 5,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    children: List.generate(
                      selectedReceiver.length,
                      (index) {
                        return Stack(
                          children: [
                            Column(
                                children: <Widget>[
                                  /// Expanded(child: Icon(choice?.icon, size:50.0, color: textStyle!.color)),

                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircleAvatar(
                                        radius:20,
                                        backgroundImage: selectedReceiver[index]
                                                .image
                                                .toString()
                                                .contains('http')
                                            ? NetworkImage(
                                                selectedReceiver[
                                                        index]
                                                    .image)
                                            : AssetImage(
                                                selectedReceiver[
                                                        index]
                                                    .image) as ImageProvider,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 2),

                                  Text(selectedReceiver[index].username,
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontSize: 7)),
                                ]),
                            Positioned(
                              top: -12,
                              right: 10,
                                child: IconButton(
                                icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                              onPressed: (){
                                removeSelectedUser(index);
                              },
                            )),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  // children: const [
                  //     SizedBox(
                  //         child: _selectedReceiver.isNotEmpty
                  //             ? ListView.builder(itemBuilder: itemBuilder)
                  //             : const Center(
                  //             child: Text(
                  //               "No receivers chosen",
                  //               style: TextStyle(color: Colors.white),
                  //             )),
                  //     ),
                  //   ],

                  children: [
                    SizedBox(
                      /// width: double.minPositive,
                      width: 420,
                      height: 80,

                      /// height will be dynamic later
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.yellow,
                          child: Center(
                            child: SizedBox(
                              child: Text(
                                '${selectedReceiver.length} receiver is selected.',

                                /// How many receivers
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      flex: 9,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          /// style: TextStyle(color: Colors.white),
                          style: TextStyle(
                            color: Colors.blue,
                            height: 1,
                          ),
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "File Description",

                            /// File Description

                            /// File Description Input
                            focusColor: Colors.blueAccent,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),

                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),

                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            prefixIcon:
                                Icon(Icons.file_copy, color: Color(0xC3005577)),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
          floatingActionButton: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child: FloatingActionButton(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      hoverColor: Colors.greenAccent,
                      splashColor: Colors.tealAccent,
                      elevation: 5,
                      tooltip: 'Choose File',
                      onPressed: () {
                        for (User us in selectedReceiver) {
                          print(us.username);
                        }
                      },
                      child: const Icon(
                        Icons.folder,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child: FloatingActionButton(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.lightBlueAccent,
                      foregroundColor: Colors.white,
                      hoverColor: Colors.greenAccent,
                      splashColor: Colors.tealAccent,
                      elevation: 5,
                      tooltip: 'Send File',
                      onPressed: () {},
                      child: const Icon(
                        Icons.send,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  userComponent({required User user}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                user.isSelected = !user.isSelected;

                if (user.isSelected && selectedReceiver.isNotEmpty) {
                  print("in2");
                  for (int i = 0; i < selectedReceiver.length; i++) {
                    if (selectedReceiver[i].id == user.id) {
                      break;
                    } else if (selectedReceiver[i].id != user.id &&
                        selectedReceiver.length - 1 == i) {
                      selectedReceiver.add(user);
                    }
                  }
                } else if (user.isSelected) {
                  print("in");
                  selectedReceiver.add(user);
                  return;
                }
              });
            },
            child: Row(children: [
              Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: user.image.toString().contains('http')
                        ? Image.network(user.image)
                        : Image.asset(user.image),
                  )),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(user.name,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),

                /// Text(user.username, style: TextStyle(color: Colors.grey[500])),
                Text(user.username,
                    style: const TextStyle(color: Colors.lightGreenAccent)),
              ])
            ]),
          ),
          // GestureDetector(
          //   child: ,
          //   onTap: () {
          //     setState(() {
          //       user.isFollowedByMe = !user.isFollowedByMe;
          //
          //       print('${user.name} is visited.');
          //
          //       if(user.isFollowedByMe){
          //         _foundedUsers.add(user);
          //       }
          //       else{
          //         return;
          //       }
          //
          //       for (var o in _foundedUsers) {
          //         print(o.name);
          //       }
          //
          //     });
          //   },
          //   /*child: AnimatedContainer(
          //       height: 35,
          //       width: 110,
          //       duration: const Duration(milliseconds: 300),
          //       decoration: BoxDecoration(
          //           color: user.isFollowedByMe
          //               ? Colors.blue[700]
          //               : Color(0xffffff),
          //           borderRadius: BorderRadius.circular(5),
          //           border: Border.all(
          //             color: user.isFollowedByMe
          //                 ? Colors.transparent
          //                 : Colors.grey.shade700 ,
          //           )),
          //       child: Center(
          //           child: Text(user.isFollowedByMe ? 'Unselect' : 'Select',
          //               style: TextStyle(
          //                   color: user.isFollowedByMe
          //                       ? Colors.white
          //                       : Colors.white)))),*/
          // )
        ],
      ),
    );
  }
}

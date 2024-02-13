import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/const_colors/const.dart';
import 'package:flutter_application_4/section/models/model.dart';
// import 'package:flutter_application_4/util_routes_link/route_name.dart';

// import 'package:flutter_application_4/util_routes_link/routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final auth = FirebaseAuth.instance;
  // ******************************

  int selected = 3;
  int current = 1;
  int sel = 2;

  // ******************************
  BoxShadow boxShadow =
      BoxShadow(color: background, offset: const Offset(3, 3));

  _buildItem(var index) {
    IconItem icons = iconItem[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Container(
          width: 75,
          height: 70,
          // foregroundColor: color,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              selected == index
                  ? boxShadow = const BoxShadow(
                      color: Color.fromARGB(200, 46, 57, 25),
                      offset: Offset(-1, 1),
                      blurRadius: 10)
                  : boxShadow = const BoxShadow(
                      color: Color.fromARGB(231, 193, 183, 183),
                      offset: Offset(2, 2),
                      blurRadius: 6)
            ],
            color: selected == index
                ? const Color.fromARGB(255, 196, 210, 67)
                : const Color.fromARGB(255, 244, 246, 242),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons.iconData,
                color: Colors.black,
              ),
              Text(
                icons.name,
                style: textStyle.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ******************************

  _navbarIcon(var item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          current = item;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor:
                current == item ? color : const Color.fromARGB(115, 77, 72, 72),
            child: InkWell(
              onTap: () {
                // auth.signOut().then((value) {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const LoginScreen()));
                //   // Navigator.pushNamed(context, RoutesNames.loginScreen);
                // }).onError((error, stackTrace) {
                //   Utils().toastMessage(error.toString());
                //   return null;
                // });
              },
              child: Icon(barIcon[item],
                  size: 28,
                  color: current == item
                      ? Colors.black54
                      : const Color.fromARGB(255, 226, 222, 222)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var linearGradient;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              // color: Color.fromARGB(255, 192, 214, 140),
              color: color,
              // gradient: _linearGradient,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 14),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/profile.jpeg'),
                          ),
                          15.pw,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('William Current',
                                  style: textStyle2.copyWith(
                                      fontWeight: FontWeight.normal)),
                              Row(
                                children: [
                                  Text(
                                    'Welcome Back',
                                    style: textStyle2.copyWith(
                                        fontSize: 24, color: Colors.black),
                                  ),
                                  const Icon(
                                    Icons.waving_hand,
                                    color: Colors.amber,
                                    size: 27,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(3, 3),
                                          blurRadius: 7),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          90.pw,
                          Expanded(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  const Color.fromARGB(255, 249, 249, 249),
                              child: Stack(children: const [
                                Icon(CupertinoIcons.bell),
                                Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          right: 4,
                          top: 0,
                          child: Container(
                            width: 130,
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: black),
                                color: color,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(33))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  CupertinoIcons.add_circled_solid,
                                  size: 33,
                                ),
                                Text('Set Budget',
                                    style: textStyle.copyWith(
                                        fontSize: 18, color: black)),
                              ],
                            ),
                          ),
                        ),
                        ClipPath(
                          clipper: BackgroundClipper(),
                          child: Container(
                            width: 370,
                            height: 200,
                            decoration: BoxDecoration(
                                color: black,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(22),
                                    bottomLeft: Radius.circular(33),
                                    bottomRight: Radius.circular(33))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('VISA',
                                      style: textStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text('Balance', style: textStyle1),
                                  Text('£ 25,332.00',
                                      style: textStyle.copyWith(fontSize: 24)),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      icon,
                                      icon,
                                      icon,
                                      10.pw,
                                      icon,
                                      icon,
                                      icon,
                                      10.pw,
                                      icon,
                                      icon,
                                      icon,
                                      10.pw,
                                      Text('7849', style: textStyle),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('William Current',
                                          style: textStyle1),
                                      105.pw,
                                      Text('Exp 02/23', style: textStyle1),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 36,
                          right: 140,
                          child: Icon(
                            Icons.auto_awesome,
                            color: color,
                            size: 35,
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 180,
                          child: Icon(
                            Icons.auto_awesome_outlined,
                            color: color.withOpacity(0.7),
                            size: 15,
                          ),
                        ),
                        Positioned(
                          top: 90,
                          right: 80,
                          child: Icon(
                            Icons.star_border_outlined,
                            color: color.withOpacity(0.6),
                            size: 15,
                          ),
                        ),
                        Positioned(
                          right: 13,
                          top: 60,
                          child: Container(
                            height: 130,
                            width: 50,
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(12)),
                            child: const RotatedBox(
                                quarterTurns: 9, child: Icon(Icons.wifi)),
                          ),
                        )
                      ],
                    ),
                    7.ph,
                    SizedBox(
                      width: double.infinity,
                      height: 85,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _buildItem(index);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9.0, vertical: 8),
                      child: Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                            boxShadow: [box, box1],
                            color: const Color.fromARGB(255, 245, 239, 239),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28))),
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      '   Quick Send',
                                      style: textStyle2,
                                    ),
                                    180.pw,
                                    Text(
                                      'See all',
                                      style: textStyle2,
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black87)
                                  ],
                                ),
                              ),
                            ),
                            3.ph,
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      ItemName itemname = itemName[index];
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    sel = index;
                                                  });
                                                },
                                                child: Padding(
                                                  padding: sel == index
                                                      ? const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 9.0)
                                                      : const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 0),
                                                  child: CircleAvatar(
                                                    radius:
                                                        sel == index ? 29 : 24,
                                                    backgroundImage: AssetImage(
                                                        itemname.url),
                                                  ),
                                                ),
                                              ),
                                              Text(' ... ', style: textStyle2),
                                            ],
                                          ),
                                          5.ph,
                                          Text(
                                            itemname.name,
                                            style: textStyle.copyWith(
                                                color: Colors.black),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13.0, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Recently Activity',
                            style: textStyle2.copyWith(
                                color: Colors.black, fontSize: 24),
                          ),
                          120.pw,
                          Text(
                            'See all',
                            style: textStyle2.copyWith(
                                color: Colors.black, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 660,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 165, 159, 159),
                                      offset: Offset(4, 4),
                                      blurRadius: 9),
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(-2, -2),
                                      blurRadius: 6),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28))),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8),
                                child: ReorderableListView.builder(
                                    itemBuilder: (context, index) {
                                      Activities activity = activities[index];
                                      return Padding(
                                        key: ValueKey(activity),
                                        padding: const EdgeInsets.all(4),
                                        child: Card(
                                          elevation: 15,
                                          shadowColor: const Color.fromARGB(
                                              255, 138, 131, 131),
                                          child: ListTile(
                                            leading: CircleAvatar(
                                              radius: 27,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 0, 0, 0),
                                              child: Icon(activity.icon),
                                            ),
                                            title: Text(activity.name,
                                                style: textStyle2.copyWith(
                                                    color: Colors.black)),
                                            subtitle: Text(activity.date,
                                                style: textStyle.copyWith(
                                                    color: Colors.black38)),
                                            trailing: Text(
                                              activity.price,
                                              style: textStyle.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    onReorder: (oldIndex, newIndex) {
                                      setState(() {
                                        if (newIndex > oldIndex) {
                                          newIndex = newIndex - 1;
                                        }
                                        // print('object');
                                        final element =
                                            activities.removeAt(oldIndex);
                                        activities.insert(newIndex, element);
                                      });
                                    },
                                    // separatorBuilder: (context, index) {
                                    //   return const Divider(
                                    //     height: 4,
                                    //     indent: 20,
                                    //     endIndent: 20,
                                    //     thickness: 1,
                                    //   );
                                    // },
                                    itemCount: activities.length)),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 170,
                            child: Container(
                              height: 14,
                              width: 42,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 245, 239, 239),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(23),
                                  bottomRight: Radius.circular(23),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 165, 159, 159)
                                          .withOpacity(0.7),
                                      offset: const Offset(3, 3),
                                      blurRadius: 4),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 100,
            child: Container(
              height: 66,
              width: 175,
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(43),
                boxShadow: [
                  box,
                  // box1,
                  const BoxShadow(
                      color: Color.fromARGB(255, 30, 30, 29),
                      offset: Offset(4, 4),
                      blurRadius: 35),
                  const BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      offset: Offset(-4, -4),
                      blurRadius: 25),
                ],
              ),
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item) {
                    return _navbarIcon(item);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Colors.white,
      size: 15,
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Path path = Path();
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height * 0.3394714);
    // path.lineTo(size.width * 0.500, size.height * 0.2871);
    // path.lineTo(size.width * 0.3747, 0);
    // return path;
// .....................
    // Path path_0 = Path();
    // path_0.moveTo(0, size.height);
    // path_0.lineTo(size.width, size.height);
    // path_0.lineTo(size.width, size.height * 0.3330);
    // path_0.quadraticBezierTo(size.width, size.height * 0.1700,
    //     size.width * 0.66296, size.height * 0.24);
    // path_0.quadraticBezierTo(size.width * 0.6, 0, size.width * 0.4690, 0);
    // path_0.lineTo(size.width * -0.0058261, size.height * -0.00033000);
    // path_0.close();
    // return path_0;

    // path_0.lineTo(size.width * 0.5456, size.height * 0.12745);
    // path_0.lineTo(size.width * 0.6, size.height * 0.3000);
    // path_0.lineTo(size.width, 0.3);
    // .................

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0013149, size.height * 0.00011000);
    path_0.lineTo(size.width * 0.0010745, size.height * 0.9994750);
    path_0.lineTo(size.width * 0.9884894, size.height * 0.9991050);
    path_0.lineTo(size.width * 0.9877872, size.height * 0.25991230);
    path_0.lineTo(size.width * 0.6601915, size.height * 0.25991230);

    path_0.lineTo(size.width * 0.5739150, size.height * 0.00099999);
    path_0.lineTo(size.width * 0.0043979, size.height * 0.00599990);
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewScreen extends StatefulWidget {
  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen>
    with SingleTickerProviderStateMixin {
  late TabController _Controller;
  var _controller = PageController();
  bool isPressed = false;
  String img2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGw1Pvg6CYMnvEnRRBXjwFqZTbIdg2CWoVdQ&usqp=CAU";

  String img =
      "https://media.cntraveler.com/photos/61e08b00abc79c35233fa50b/master/w_2045,h_1363,c_limit/Bedroom-ArtHotel-DenverCO-CRHotel.jpeg";
  @override
  void initState() {
    _Controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    _Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.gray100,
        elevation: 0.0,
        actions: [
          "https://images.unsplash.com/photo-1491616569293-e27f7f4cd41a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFjayUyMG9mJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
              .circularNetworkImage(radius: 17)
              .px(15)
        ],
      ),
      drawer: SafeArea(
          child: Drawer(
              child: VStack([
                ListTile(
                  leading: Icon(Icons.arrow_back_ios_new, color: Vx.white)
                      .onTap(() => Navigator.pop(context)),
                  trailing: img.circularNetworkImage(radius: 17),
                ),
                Divider(
                  color: Vx.gray300,
                ),
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(
                      Icons.contacts_rounded,
                      color: Vx.white,
                    ),
                    title: "Profile".text.white.xl.make(),
                  ).onInkTap(
                    () => isPressed = !isPressed,
                  ),
                ),
                20.heightBox,
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Vx.white,
                    ),
                    title: "Notification".text.white.xl.make(),
                  ).onInkTap(
                    () => isPressed = !isPressed,
                  ),
                ),
                20.heightBox,
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(
                      Icons.document_scanner,
                      color: Vx.white,
                    ),
                    title: "Report".text.white.xl.make(),
                  ).onInkTap(
                    () => isPressed = !isPressed,
                  ),
                ),
                20.heightBox,
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Vx.white,
                    ),
                    title: "Setting".text.white.xl.make(),
                  ).onInkTap(
                    () => isPressed = !isPressed,
                  ),
                ),
                20.heightBox,
                Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: Vx.white,
                    ),
                    title: "Logout".text.white.xl.make(),
                  ).onInkTap(
                    () => isPressed = !isPressed,
                  ),
                ),
              ]),
              backgroundColor: Vx.teal600)),
      bottomNavigationBar: Material(
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Vx.teal800,
          child: TabBar(
            indicatorColor: Colors.transparent,
            padding: const EdgeInsets.all(15),
            controller: _Controller,
            tabs: const [
              Icon(Icons.home),
              Icon(Icons.favorite),
              Icon(Icons.pin_drop_outlined),
              Icon(CupertinoIcons.chevron_left_slash_chevron_right),
            ],
          )).px(20).py(20),
      body: VxBox(
              child: VStack([
        VxBox(
          child: CupertinoTextField(
            placeholder: "Search Places",
            placeholderStyle: const TextStyle(color: Vx.gray500),
            suffix: VxBox(
                child: const FittedBox(
              fit: BoxFit.contain,
              child: Icon(
                Icons.menu_open,
                color: Vx.white,
              ),
            )).p8.square(50).roundedSM.teal800.make(),
            decoration: BoxDecoration(
                color: Vx.gray200, borderRadius: BorderRadius.circular(10)),
          ).p(15),
        ).height(75).make(),
        VxBox(
                child: HStack([
          VxBox(child: "House".text.white.bold.makeCentered())
              .width(90)
              .roundedSM
              .teal800
              .make(),
          20.widthBox,
          VxBox(child: "Villa".text.white.bold.makeCentered())
              .width(90)
              .roundedSM
              .teal800
              .make(),
          20.widthBox,
          VxBox(child: "HomeStay".text.white.bold.makeCentered())
              .width(90)
              .roundedSM
              .teal800
              .make(),
          20.widthBox,
          VxBox(child: "FarmHouse".text.white.bold.makeCentered())
              .width(90)
              .roundedSM
              .teal800
              .make(),
          20.widthBox,
        ]).scrollHorizontal().py(10).px(10))
            .size(context.screenWidth, 60)
            .make(),
        10.heightBox,
        SizedBox(
          height: 250,
          width: 350,
          child: PageView(
              allowImplicitScrolling: true,
              pageSnapping: true,
              controller: _controller,
              children: [
                ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VxBox(
                                child: Align(
                          alignment: Alignment.bottomLeft,
                          child: VStack([
                            ZStack([
                              "Hotel Elite"
                                  .text
                                  .bold
                                  .white
                                  .xl2
                                  .make()
                                  .py(0)
                                  .px(10),
                            ]),
                            "Situated in Islamabad, 9 km from Shah Faisal Mosque, Ramada by Wyndham Islamabad features accommodation with a restaurant, free private parking and a fitness centre."
                                .text
                                .white
                                .xs
                                .make()
                                .py(5)
                                .px(10)
                          ]),
                        ))
                            .bgImage(DecorationImage(
                                image: NetworkImage(img2), fit: BoxFit.cover))
                            .make())
                    .px(15),
                ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VxBox(
                                child: Align(
                          alignment: Alignment.bottomLeft,
                          child: VStack([
                            ZStack([
                              "Hotel Elite"
                                  .text
                                  .bold
                                  .white
                                  .xl2
                                  .make()
                                  .py(0)
                                  .px(10),
                            ]),
                            "Situated in Islamabad, 9 km from Shah Faisal Mosque, Ramada by Wyndham Islamabad features accommodation with a restaurant, free private parking and a fitness centre."
                                .text
                                .white
                                .xs
                                .make()
                                .py(5)
                                .px(10)
                          ]),
                        ))
                            .bgImage(DecorationImage(
                                image: NetworkImage(img2), fit: BoxFit.cover))
                            .make())
                    .px(15),
                ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: VxBox(
                                child: Align(
                          alignment: Alignment.bottomLeft,
                          child: VStack([
                            ZStack([
                              "Hotel Elite"
                                  .text
                                  .bold
                                  .white
                                  .xl2
                                  .make()
                                  .py(0)
                                  .px(10),
                            ]),
                            "Situated in Islamabad, 9 km from Shah Faisal Mosque, Ramada by Wyndham Islamabad features accommodation with a restaurant, free private parking and a fitness centre."
                                .text
                                .white
                                .xs
                                .make()
                                .py(5)
                                .px(10)
                          ]),
                        ))
                            .bgImage(DecorationImage(
                                image: NetworkImage(img2), fit: BoxFit.cover))
                            .make())
                    .px(15),
              ]),
        ).centered(),
        5.heightBox,
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: JumpingDotEffect(
              activeDotColor: Vx.teal800, dotHeight: 10, dotWidth: 10),
        ).centered(),
        10.heightBox,
        ListTile(
          leading: "Featured Listings".text.black.bold.xl2.make(),
          trailing: "See ALL".text.teal800.xl.bold.make().px(10),
        ),
        10.heightBox,
        Slidable(
          endActionPane: ActionPane(motion: DrawerMotion(), children: [
            SlidableAction(
              onPressed: null,
              backgroundColor: Colors.red,
              icon: Icons.book_online,
              label: "Book Online",
            )
          ]),
          child: ListTile(
            leading: VxBox()
                .bgImage(DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  fit: BoxFit.cover,
                ))
                .square(60)
                .rounded
                .make(),
            title: VStack([
              "Crown Plaza".text.black.bold.make(),
              VxRating(
                onRatingUpdate: (String) {},
                selectionColor: Vx.yellow300,
                maxRating: 10,
                count: 4,
              ),
              HStack([
                Icon(Icons.hotel, color: Vx.teal600, size: 15),
                5.widthBox,
                "3".text.xs.color(Colors.grey).make(),
                100.widthBox,
                Icon(Icons.bathtub, color: Vx.teal600, size: 15),
                5.widthBox,
                "2".text.xs.color(Colors.grey).make(),
              ]),
              3.heightBox,
              HStack([
                "USD 7000/ Month".text.bold.teal600.italic.make(),
                40.widthBox,
                "Read More".text.teal700.xs.make()
              ])
            ]),
          ),
        ),
        Divider(),
        ListTile(
          leading: VxBox()
              .bgImage(DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/1457842/pexels-photo-1457842.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                fit: BoxFit.cover,
              ))
              .square(60)
              .rounded
              .make(),
          title: VStack([
            "Emerald Bay".text.black.bold.make(),
            VxRating(
              onRatingUpdate: (String) {},
              selectionColor: Vx.yellow300,
              maxRating: 10,
              count: 4,
            ),
            HStack([
              Icon(Icons.hotel, color: Vx.teal600, size: 15),
              5.widthBox,
              "3".text.xs.color(Colors.grey).make(),
              100.widthBox,
              Icon(Icons.bathtub, color: Vx.teal600, size: 15),
              5.widthBox,
              "2".text.xs.color(Colors.grey).make(),
            ]),
            3.heightBox,
            HStack([
              "USD 7000/ Month".text.bold.teal600.italic.make(),
              40.widthBox,
              "Read More".text.teal700.xs.make()
            ])
          ]),
        )
      ]).scrollVertical())
          .size(context.screenWidth, context.screenHeight)
          .gray100
          .make(),
    );
  }
}

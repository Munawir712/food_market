part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
              margin: EdgeInsets.only(bottom: defaultMargin),
              padding: EdgeInsets.only(bottom: 26),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    margin: EdgeInsets.only(top: 26, bottom: 16),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/photo_border.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          image: DecorationImage(
                              image: (mockUser.picturePath == null)
                                  ? AssetImage("assets/photo.png")
                                  : NetworkImage(mockUser.picturePath),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Text((mockUser.name == null) ? "No User" : mockUser.name,
                      style: blackFontStyle2.copyWith(fontSize: 18)),
                  SizedBox(height: 6),
                  Text((mockUser.email == null) ? "User email" : mockUser.email,
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            //// Body
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  CustomTabbar(
                    titles: ["Account", "FoodMarket"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: (selectedIndex == 0)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Edit Profile",
                                          style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Home Addresss",
                                          style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Security", style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Payments", style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rate App", style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Help Center",
                                          style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Privacy & Policy",
                                          style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Terms & Conditions",
                                          style: blackFontStyle3),
                                      SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Image.asset(
                                            "assets/right_arrow.png"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

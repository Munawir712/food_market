part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Sign In ",
      subtitle: "Temukan makanan terbaikmu",
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text("Email", style: blackFontStyle2),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black)
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: "Type your email address"
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            width: double.infinity,
            child: Text("Password", style: blackFontStyle2),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black)
            ),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyFontStyle,
                hintText: "Type your password"
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading ? SpinKitFadingCircle(
              size: 45,
              color: mainColor,
            ) : RaisedButton(
              elevation: 0,
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: mainColor,
              child: Text("Sign In", style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 12),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading ? SpinKitFadingCircle(
              size: 45,
              color: mainColor,
            ) : RaisedButton(
              elevation: 0,
              onPressed: () {
                Get.to(SignUpPage());
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: greyColor,
              child: Text("Create New Account", style: blackFontStyle3.copyWith(color: Colors.white, fontWeight: FontWeight.w500),),
            ),
          ),
        ],
      ),
    );
  }
}
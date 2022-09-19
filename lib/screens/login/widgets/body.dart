import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page_ui/screens/login/widgets/background.dart';
import 'package:login_page_ui/utilities/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                hintText: 'Your Email',
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

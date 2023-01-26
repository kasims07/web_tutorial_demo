import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 100.0,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Freelancer',
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.0),
          ),
          SizedBox(
            width: 250.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderNav(text: 'Home', selected: true),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(text: 'Find a Team', selected: false),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(text: 'Publish Project', selected: false),
              SizedBox(
                width: 40.0,
              ),
              HeaderNav(text: 'About', selected: false)
            ],
          ),
          SizedBox(
            width: 250.0,
          ),
          Row(
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 13.0),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 20.0,
                width: 1.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Log In',
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 13.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;
  HeaderNav({Key? key, required this.text, required this.selected}) : super(key: key);

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(fontSize: 13.0, color: Colors.white),
        ),
        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),
        widget.selected
            ? CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : SizedBox()
      ],
    );
  }
}

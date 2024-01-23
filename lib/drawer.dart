import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home/home_screen.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331,
      child: Drawer(
        backgroundColor: mainColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 16),
          child: ListView(children:  <Widget>[
            const SizedBox(height: 125,),
            Row(
              children: [
                SvgPicture.asset('assets/profile-image.svg'),
                const SizedBox(width: 6.5,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'gamila_hesham',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'gamilaeladay@gmail.com',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 32,),
            const Divider(color: Color(0xffE4D1B9),thickness: 1,),
            const SizedBox(height: 47,),
            const Text(
              'tourism type',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'Transportation',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const Text(
              'hotels',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'share with',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const Text(
              'about us',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),



          ]),
        ),
      ),
    );
  }
}

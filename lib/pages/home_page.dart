import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width / 430;
    final double h = MediaQuery.of(context).size.height / 932;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.only(
            left: 24.0 * w, right: 24.0 * w, top: 60.0 * h, bottom: 24.0 * h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('GoSustain!',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .displayLarge!
                        .copyWith(fontSize: 36 * w)),
                SizedBox(height: 62 * h),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Image.asset(
                    'lib/images/image_2-removebg-preview.png',
                    height: 256 * h,
                    width: 345 * w,
                  ),
                ),
                SizedBox(height: 45 * h),
                HomeButton(route: '/myprofile', text: "My Profile"),
                SizedBox(height: 34 * h),
                HomeButton(
                  route: '/createproject',
                  text: 'Create Project',
                ),
                SizedBox(height: 34 * h),
                HomeButton(
                  route: '/projects',
                  text: 'Check out the projects',
                ),
                SizedBox(height: 34 * h),
                HomeButton(
                  route: '/leaderboard',
                  text: 'Leadership',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String text;
  final String route;
  HomeButton({required this.route, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width / 430;
    final double h = MediaQuery.of(context).size.height / 932;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(336 * w, 68 * h),
          primary: Colors.white,
          onPrimary: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 25 * w),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text,
            style: TextStyle(
              fontSize: 24 * w,
              fontFamily: "GoogleSansDisplay",
            )));
  }
}

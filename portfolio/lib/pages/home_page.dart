import 'package:flutter/material.dart';
//import 'package:portfolio/components/contact_form.dart';
//import 'package:portfolio/components/footer.dart';
//import 'package:portfolio/components/header1.dart';
import 'package:portfolio/components/home_page_actions.dart';
//import 'package:portfolio/components/more_about_me.dart';
import 'package:portfolio/components/my_drawer.dart';
//import 'package:portfolio/components/recent_projects.dart';
//import 'package:portfolio/components/social_icons_bar.dart';
//import 'package:portfolio/components/top_skills.dart';
import 'package:portfolio/utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Add Key
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'SAMUEL (ELIE) LEVY',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 17, 18, 28),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 66,
        elevation: 2,
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFf4756DF),
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  sc: myScrollController,
                ),
        ],
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,
      floatingActionButton: FloatingActionButton(
        mini: Utils.isMobile(context) ? true : false,
        onPressed: () {
          myScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        child: Image.network(
          'portfolio/assets/images/images.png',
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              //Add Scroll Controller
              child: Column(
                children: const [
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactForm(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

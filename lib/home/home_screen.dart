import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var mainColor = const Color(0xff6C3428);
final GlobalKey<ScaffoldState> key = GlobalKey();
class _HomeScreenState extends State<HomeScreen> {
  var controller=PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavDrawer(),
        key:key ,
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 32),
                child: Row(
                  children: [
                    Text(
                      'kEMET',
                      style: TextStyle(
                          fontSize: 32,
                          color: mainColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        key.currentState!.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: mainColor,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'choose city you need:',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24,top: 32),
                child: SizedBox(
                  height: 200,
                  child: ListView.separated(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const ListViewItem(),
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                      itemCount: 5),
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 5,
                  effect: SlideEffect(
                    activeDotColor: mainColor,
                    dotWidth: 10,
                    dotHeight: 10,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32,top: 43),
                child: Text(
                  'suggested for you:',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                childAspectRatio: 188 / 271,
                children: List.generate(10,(index) => const GridViewItem() ),
                ),
            ],
          ),
        ),
      )),
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 188,
        height: 271,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('empty_image_path.jpg'),
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/image2.svg'),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 4),
                child: Text(
                  'Cleopatra bath',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Expanded(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    'seddoeiusmodtempor incididunt ut laboreet doloremagnaaliqua.Ut enim ad minim.',
                    style: TextStyle(
                        color: Color(0xffBE8C63),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),),
              const SizedBox(
                height: 8,
              )
            ]),
      ),
    );
  }
}
class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset('assets/image1.svg'),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Giza',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),

      ],
    );
  }
}

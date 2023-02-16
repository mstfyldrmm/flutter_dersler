import 'package:flutter/material.dart';

class Arayuz extends StatefulWidget {
  const Arayuz({Key? key}) : super(key: key);

  @override
  State<Arayuz> createState() => _ArayuzState();
}

class _ArayuzState extends State<Arayuz> {
  late final PageController _controller;
  int _pageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: sayfalar.length,
                  controller: _controller,
                  itemBuilder: ((context, index) => _ProjectFirst(
                      image: sayfalar[index].image,
                      text: sayfalar[index].text,
                      description: sayfalar[index].description))),
            ),
            Row(
              children: [
                ...List.generate(
                    sayfalar.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: _AltWidget(
                            isActive: index == _pageIndex,
                          ),
                        )),
                Spacer(),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: Icon(Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: Colors.purpleAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _AltWidget extends StatelessWidget {
  const _AltWidget({
    Key? key,
    this.isActive = false,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 4,
      height: isActive ? 12 : 4,
      decoration: BoxDecoration(
          color: isActive
              ? Colors.purpleAccent
              : Color.fromARGB(255, 205, 172, 210),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class _ProjectStrings {
  final String image;
  final String text;
  final String description;

  _ProjectStrings(
      {required this.image, required this.text, required this.description});
}

final List<_ProjectFirst> sayfalar = [
  _ProjectFirst(
      image: 'assets/png/kart.png',
      text: "Find the item you've \nbeen looking for",
      description:
          "Here you'll see rich varieties of goods, carefully classified for seamless browsing experience"),
  _ProjectFirst(
      image: 'assets/png/kart5.png',
      text: "Get those shopping \nbags filled",
      description:
          "Add any items you want to your cardt or save it on your wishlist so you don't miss it in your future purchases"),
  _ProjectFirst(
      image: 'assets/png/kart3.png',
      text: "Fast & secure \npayment",
      description: "There are many payment options avaible for your ease. "),
  _ProjectFirst(
      image: 'assets/png/kart4.png',
      text: "Package tracking",
      description:
          "In particular, Shopion can pack your orders, and help you seamlessly manage your shipments "),
  _ProjectFirst(
      image: 'assets/png/kart2.png',
      text: "Nearby stores",
      description:
          "Easily track nearby shops browse throught their items and get information about their products")
];

class _ProjectFirst extends StatelessWidget {
  const _ProjectFirst({
    Key? key,
    required this.image,
    required this.text,
    required this.description,
  }) : super(key: key);

  final String image;
  final String text;
  final String description;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            image,
            height: 250,
          ),
          Spacer(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SizedBox(
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
              height: 35,
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}

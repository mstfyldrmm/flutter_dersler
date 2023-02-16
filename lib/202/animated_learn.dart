import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn>
    with TickerProviderStateMixin {
  bool _isVisibility = true;
  bool _isOpacity = false;

  void _changeVisibility() {
    setState(() {
      _isVisibility = !_isVisibility;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _Duration.durationLow);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisibility();
        controller.animateTo(_isVisibility ? 1 : 0);
      }),
      body: Column(
        children: [
          context.sizedBox(20),
          Center(
              child: Text(
            'Mustafa',
            style: context.textTheme().bodyText1,
          )),
          //animated croos fade, iki widget arasinda gecis yapmayi saglar.
          _AnimatedCrossFadeFirstCase(),

          //text ifadeyi butona basinca opacity artmasi

          ListTile(
            title: AnimatedOpacity(
              duration: _Duration.durationLow,
              opacity: _isOpacity ? 1 : 0,
              child: const Text(
                'data',
                style: TextStyle(color: Colors.black),
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: Icon(Icons.arrow_circle_left)),
          ),

          AnimatedDefaultTextStyle(
              child: Text('mustafa'),
              style: _isVisibility
                  ? TextStyle(fontSize: 20)
                  : TextStyle(fontSize: 100),
              duration: _Duration.durationLow),

          AnimatedIcon(
            icon: AnimatedIcons.arrow_menu,
            progress: controller,
          ),
          AnimatedContainer(
            color: Colors.black,
            duration: _Duration.durationLow,
            height: _isVisibility ? 50 : 100,
            width: 50,
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                    top: 10,
                    child: Text('data'),
                    duration: _Duration.durationLow)
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _AnimatedCrossFadeFirstCase() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState: _isVisibility
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: _Duration.durationLow);
  }
}

class _Duration {
  static const durationLow = Duration(seconds: 1);
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }

  SizedBox sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}

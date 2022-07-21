import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.4],
            colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));
    return Scaffold(
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [Screen1(), Screen2()],
      ),
    ));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text('11°', style: textStyle),
          const Text('Míercoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 120,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
        ));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text('Bienvenido',
              style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
      )),
    );
  }
}

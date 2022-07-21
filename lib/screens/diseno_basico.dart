import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://cdn.photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg')),
        const Title(),
        const ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
              'Culpa commodo magna in eu ut excepteur consequat officia incididunt labore duis aute aliqua anim. Id fugiat proident ullamco ipsum excepteur id aute veniam nisi. Lorem esse elit velit irure sint cupidatat voluptate deserunt adipisicing magna aliqua enim nulla. Consequat qui sit nostrud aliqua et incididunt. Duis Lorem sunt ad incididunt enim veniam duis.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15)),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          Text('Fugiat qui ad amet exercitation.',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Fugiat qui ad amet exercitation.',
              style: TextStyle(color: Colors.black45)),
        ]),
        Expanded(child: Container()),
        const Icon(Icons.star_border_purple500, color: Colors.red),
        const Text('45')
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          CustomButton(icon: Icons.call, title: 'CALL'),
          CustomButton(icon: Icons.location_on, title: 'ROUTE'),
          CustomButton(icon: Icons.share, title: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(title, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

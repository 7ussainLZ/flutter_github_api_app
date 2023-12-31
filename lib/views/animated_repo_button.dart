import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedRepoButton extends StatelessWidget {
  const AnimatedRepoButton(
      {super.key, required this.toStarred, required this.toRepositories});

  final Function() toStarred;
  final Function() toRepositories;

  @override
  Widget build(context) {
    return AnimatedButtonBar(
      animationDuration: const Duration(seconds: 1),
      radius: 50.0,
      padding: const EdgeInsets.all(16.0),
      backgroundColor: Color.fromARGB(255, 144, 144, 144),
      foregroundColor: const Color.fromARGB(255, 217, 217, 217),
      elevation: 24,
      // borderColor: Colors.white,
      // borderWidth: 2,
      innerVerticalPadding: 15,
      children: [
        ButtonBarEntry(
          onTap: toRepositories,
          child: const Text(
            "Repositories",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ), //Icon(Icons.person)),
        ButtonBarEntry(
          onTap: toStarred,
          child: const Text(
            "Starred",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

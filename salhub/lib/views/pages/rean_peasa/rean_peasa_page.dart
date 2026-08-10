import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/level_widget.dart';

class ReanPeasaPage extends StatelessWidget {
  const ReanPeasaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("រៀនភាសាប្រចាំថ្ងៃ"),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
              LevelWidget(
                title: "កម្រិត ១",
                description: "Level 1",
                nextPage: Placeholder(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

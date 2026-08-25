import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class LessonListScreen extends StatelessWidget {
  final int level;

  const LessonListScreen({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    final lessonData = _getLessonsForLevel(level);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButtonWidget(),
        leadingWidth: 100,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        children: [
          Center(
            child: Text(
              lessonData['title']!,
              textAlign: .center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF795548),
              ),
            ),
          ),
          Center(
            child: Text(
              lessonData['subtitle']!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8D6E63),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...(lessonData['items'] as List<Map<String, String>>).map((item) {
            final isRight = item['align'] == 'right';
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: isRight
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  if (!isRight) _buildNumberCircle(item['number']!),
                  if (!isRight) const SizedBox(width: 8),
                  _buildLessonPill(item['text']!),
                  if (isRight) const SizedBox(width: 8),
                  if (isRight) _buildNumberCircle(item['number']!),
                ],
              ),
            );
          }).toList(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildNumberCircle(String number) {
    return Text(
      number,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFF8D6E63),
      ),
    );
  }

  Widget _buildLessonPill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F1FF),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFB39DDB), width: 1.5),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4A148C),
        ),
      ),
    );
  }

  Map<String, dynamic> _getLessonsForLevel(int level) {
    if (level == 1) {
      return {
        'title': 'កម្រិត ១',
        'subtitle': '(១ - ១០)',
        'items': [
          {'number': '១', 'text': 'ស្គាល់លេខ ១-២', 'align': 'left'},
          {'number': '២', 'text': 'ស្គាល់លេខ ៣-៤', 'align': 'right'},
          {'number': '៣', 'text': 'ស្គាល់លេខ ៥-៦', 'align': 'left'},
          {'number': '៤', 'text': 'ស្គាល់លេខ ៦-៧', 'align': 'right'},
          {'number': '៥', 'text': 'ស្គាល់លេខ ៨-៩', 'align': 'left'},
          {'number': '៦', 'text': 'ស្គាល់លេខ ១០', 'align': 'right'},
          {'number': '៧', 'text': 'ផ្សំរូបភាព និងចំនួន', 'align': 'left'},
        ],
      };
    } else if (level == 2) {
      return {
        'title': 'កម្រិត ២',
        'subtitle': '(២០-១០០)',
        'items': [
          {'number': '៩', 'text': 'ស្គាល់លេខ ២០-៣០', 'align': 'left'},
          {'number': '៩', 'text': 'ស្គាល់លេខ ៤០-៥០', 'align': 'right'},
          {'number': '១០', 'text': 'ស្គាល់លេខ ៦០-៧០', 'align': 'left'},
          {'number': '១១', 'text': 'ស្គាល់លេខ ៨០-៩០', 'align': 'right'},
          {'number': '១២', 'text': 'ស្គាល់លេខ ១០០', 'align': 'left'},
          {'number': '១៣', 'text': 'រៀបបូក និងចំនូន', 'align': 'right'},
          {'number': '១៤', 'text': 'រៀបការរើសកម្រិត', 'align': 'left'},
        ],
      };
    } else {
      return {
        'title': 'កម្រិត ៣\n(Advanced)',
        'subtitle': '',
        'items': [
          {'number': '១៥', 'text': 'រាប់រយលេខ ១០១-២០០', 'align': 'left'},
          {'number': '១៦', 'text': 'រូបភាព និងចំនួនបូក', 'align': 'right'},
          {'number': '១៧', 'text': 'ខ្នាតរយ', 'align': 'left'},
          {'number': '១៨', 'text': 'ការប្រកបសាមញ្ញ', 'align': 'right'},
          {'number': '១៩', 'text': 'ការរាប់លេខសាមញ្ញ', 'align': 'left'},
          {'number': '២០', 'text': 'មូលដ្ឋានរូបគណិត', 'align': 'right'},
          {
            'number': '២១',
            'text': 'លំហាត់ល្បងប្រជ្ញាកម្រិតខ្ពស់',
            'align': 'left',
          },
        ],
      };
    }
  }
}

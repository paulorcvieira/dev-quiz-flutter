import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  const QuizWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnswerModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(height: 64),
        Text(
          widget.question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        for (var i = 0; i < widget.question.awnsers.length; i++)
          AwnserWidget(
              awnser: awnser(i),
              isSelected: indexSelected == i,
              onTap: () {
                indexSelected = i;
                setState(() {});
              }),
      ],
    ));
  }
}

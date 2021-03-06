import 'package:flutter/material.dart';

import 'package:devquiz/core/core.dart';
import 'package:devquiz/view/shared/widgets/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int pagesLenght;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.pagesLenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão $currentPage",
                style: AppTextStyles.body,
              ),
              Text(
                "de $pagesLenght",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(
            value: this.currentPage / this.pagesLenght,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../flutter_plus.dart';

class RichTextPlus extends StatelessWidget {
  /*
    Todo
    urls
    phones
    dates
  */

  /// RichTextPlus texts
  final List<TextPlus>? texts;

  /// RichTextPlus maxLines
  final int maxLines;

  /// RichTextPlus inside Center widget
  final bool isCenter;

  /// RichTextPlus inside Expanded widget
  final bool isExpanded;

  RichTextPlus({
    Key? key,
    this.maxLines = 1,
    // custom
    this.isCenter = false,
    this.isExpanded = false,
    this.texts,
    // this.mainTextStyleX,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var richTextPlus = _buildRichTextPlus();

    if (isCenter == true) {
      richTextPlus = Center(
        child: richTextPlus,
      );
    }

    if (isExpanded == true) {
      richTextPlus = Expanded(
        child: richTextPlus,
      );
    }
    return richTextPlus;
  }

  Widget _buildRichTextPlus() {
    return RichText(
      key: key,
      text: TextSpan(
        text: '',
        children: texts!
            .map(
              (richTextPlus) => TextSpan(
                text: richTextPlus.text,
                style: richTextPlus.textStyle,
              ),
            )
            .toList(),
      ),
    );
  }
}

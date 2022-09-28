import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:test_bosc/views/constants/spaces/dimensions.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //
        kWidth10,
        //<<<<<Title>>>>>//
        NeumorphicText(
          "Note It",
          style: const NeumorphicStyle(
            depth: 10,
            intensity: 0.8,
            color: kGrey,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

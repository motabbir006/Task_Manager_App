import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/assets_path.dart';

class screenBackground extends StatelessWidget {
  const screenBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          height: double.infinity,
          width: double.infinity,
          AssetsPath.backgroundSvg,
          fit: BoxFit.cover,
        ),
        SafeArea(child: child),
      ],
    );
  }
}

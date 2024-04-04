import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jdenticon_dart/jdenticon_dart.dart';

class JDenticonAvatar extends StatelessWidget {
  const JDenticonAvatar({
    required this.address,
    super.key,
  });

  final String address;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: SvgPicture.string(
        Jdenticon.toSvg(address),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../../utils/constants/sizes.dart';

class PSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: PSizes.appBarHeight,
    left: PSizes.defaultSpace,
    bottom: PSizes.defaultSpace,
    right: PSizes.defaultSpace,
  );
}
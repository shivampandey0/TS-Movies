import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ts_movies_app/common/constant/size_constants.dart';
import 'package:ts_movies_app/common/screenutil/screenutil.dart';
import 'package:ts_movies_app/presentation/widgets/logo.dart';
import '../../common/extensions/size_extensions.dart';

class MovieAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
        left: Sizes.dimen_16.w,
        right: Sizes.dimen_16.w,
      ),
      child: Row(
        children: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/svgs/menu.svg',
                height: Sizes.dimen_12.h,
              ),
              onPressed: () {}),
          Expanded(child: const Logo(height: Sizes.dimen_14)),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: Sizes.dimen_12.h,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}

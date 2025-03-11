import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lab07/utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(),
    );
  }
}

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Iconsax.arrow_left_2_outline),
      title: Text(
        "Mega Shop",
        style: TextStyle(
          fontFamily: "DMSans",
          fontWeight: FontWeight.w700,
          color: FColors.oceanBlue,
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(
            Iconsax.notification_bing_outline,
            color: FColors.dark,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: Icon(
            IonIcons.cart,
            color: FColors.dark,
          ),
        ),
      ],
      centerTitle: true,
      elevation: 2,
      backgroundColor: Colors.white,
    );
  }
}

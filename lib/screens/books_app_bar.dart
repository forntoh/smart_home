// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../constants.dart';

// class BooksAppBar extends StatelessWidget with PreferredSizeWidget {
//   const BooksAppBar({
//     Key key, this.isHome = false,
//   }) : super(key: key);
//   final bool isHome;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       leading: Padding(
//         padding: const EdgeInsets.only(left: defaultPadding / 2),
//         child: isHome ? Icon(CupertinoIcons.bars) : BackButton(),
//       ),
//       toolbarHeight: appBarHeight,
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(appBarHeight);
// }

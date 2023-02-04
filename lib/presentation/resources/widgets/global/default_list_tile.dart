// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:uccd_flutter/core/style/colors.dart';
// import 'package:uccd_flutter/core/style/themes.dart';

// /// Reuired Params
// ///  - title
// ///  - icon
// ///  - onTap

// class DefaultListTile1 extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final IconData? suffixIcon;
//   final Color iconColor;
//   final String lang;
//   final Widget notiWidget;
//   final void Function()? ontap;

//   const DefaultListTile1({
//     Key? key,
//     required this.title,
//     required this.icon,
//     this.ontap,
//     this.iconColor = AppColors.orange,
//     this.suffixIcon,
//     this.lang = "",
//     this.notiWidget = const SizedBox(),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: ontap,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 2.5.h),
//         child: Row(
//           children: [
//             Icon(
//               icon,
//               color: iconColor,
//               size: 40,
//             ),
//             SizedBox(
//               width: 6.w,
//             ),
//             Text(
//               title,
//               style: TextStyle(
//                   fontSize: 16.sp,
//                   color: AppColors.brawn,
//                   fontWeight: FontWeight.w500),
//             ),
//             Spacer(),
//             Text(
//               lang,
//               style: AppStyle.brawnText,
//             ),
//             Icon(
//               suffixIcon,
//               color: AppColors.brawn,
//             ),
//             notiWidget,
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// Reuired Params
// ///  - title
// ///  - subtitle
// ///  - image
// /// Additional Properties
// ///  - subtitle
// ///  - dismissible

// class DefaultListTile2 extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String image;
//   final IconData? suffixIcon;
//   final Color iconColor;
//   final String lang;
//   final Widget notiWidget;
//   final void Function()? ontap;

//   const DefaultListTile2({
//     Key? key,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//     this.ontap,
//     this.iconColor = AppColors.brawn,
//     this.suffixIcon,
//     this.lang = "",
//     this.notiWidget = const SizedBox(),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       // TODO: understand
//       // types of keys
//       key: UniqueKey(),
//       background: Container(
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//         margin: EdgeInsets.symmetric(vertical: 4.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.red,
//         ),
//         alignment: Alignment.centerLeft,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Icon(
//               Icons.delete,
//               color: Colors.white,
//               size: 40,
//             ),
//             const Icon(
//               Icons.delete,
//               color: Colors.white,
//               size: 40,
//             ),
//           ],
//         ),
//       ),
//       child: InkWell(
//         onTap: ontap,
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 2.5.h,horizontal: 2.w),
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 50,
//                 height:50,
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               SizedBox(
//                 width: 6.w,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                         fontSize: 16.sp,
//                         color: AppColors.brawn,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 1.h,
//                   ),
//                   Text(
//                     subtitle,
//                     style: TextStyle(
//                         fontSize: 12.sp,
//                         color: AppColors.brawn,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               Spacer(),
//               Text(
//                 lang,
//                 style: AppStyle.brawnText,
//               ),
//               Icon(
//                 suffixIcon,
//                 color: iconColor,
//                 size: 30,
//               ),
//               notiWidget,
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

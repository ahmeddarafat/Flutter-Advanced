// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:uccd_flutter/core/style/colors.dart';

// class DefaultOutlineButton extends StatelessWidget {
//   final String title;
//     final void Function()? onPressed;


//   const DefaultOutlineButton({
//     Key? key,
//     required this.title, this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: OutlinedButton(
//         onPressed: onPressed,
//         style: OutlinedButton.styleFrom(
//           foregroundColor: AppColors.orange,
//           side: const BorderSide(color: AppColors.orange, width: 2.0),
//           shape: RoundedRectangleBorder(
//               /// it dosen't work inside RoundedRectangleBorder()
//               // side: BorderSide(color: AppColors.orange, width: 2.0),
//               borderRadius: BorderRadius.circular(12)),
//         ),
//         child: Padding(
//           padding:  EdgeInsets.symmetric(vertical: 1.25.h),
//           child: Text(title,style: TextStyle(fontSize: 12.sp)),
//         ),
//       ),
//     );
//   }
// }

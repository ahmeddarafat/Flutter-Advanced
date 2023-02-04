// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:uccd_flutter/core/style/colors.dart';

// class DefaultElevetedButton extends StatelessWidget {
//   final String title;
//   final void Function()? onPressed;

//   const DefaultElevetedButton({
//     Key? key,
//     required this.title,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
          
//           backgroundColor: AppColors.orange,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         ),
//         child: Padding(
//           padding:  EdgeInsets.symmetric(vertical: 1.25.h),
//           child: Text(title, style: TextStyle(fontSize: 14.sp)),
//         ),
//       ),
//     );
//   }
// }

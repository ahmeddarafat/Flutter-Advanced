// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class CategoriesList extends StatefulWidget {
//   final List list;
//   const CategoriesList({
//     Key? key,
//     required this.list,
//   }) : super(key: key);

//   @override
//   CategoriesListState createState() => CategoriesListState();
// }

// class CategoriesListState extends State<CategoriesList> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: SizedBox(
//         height: 40,
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: widget.list.length,
//             itemBuilder: (_, index) {
//               return buildCategory(index);
//             }),
//       ),
//     );
//   }

//   Widget buildCategory(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 8),
//         child: IntrinsicWidth(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: Text(
//                   widget.list[index],
//                   style: TextStyle(
//                       // fontWeight: FontWeight.bold,
//                       fontSize: 14.sp,
//                       color: selectedIndex == index
//                       ? AppColors.orange
//                       : Colors.brown,
//                       ),
//                     textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 height: 4,
//                 // width: 80,
//                 // TODO: try
//                 // width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: selectedIndex == index
//                     ? AppColors.orange
//                     : Colors.transparent,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(32))
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategoriesList2 extends StatefulWidget {
//   final List list;
//   const CategoriesList2({
//     Key? key,
//     required this.list,
//   }) : super(key: key);

//   @override
//   CategoriesList2State createState() => CategoriesList2State();
// }

// class CategoriesList2State extends State<CategoriesList2> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: SizedBox(
//         height: 60,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             buildCategory(0),
//             buildCategory(1),

//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildCategory(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               widget.list[index],
//               style: TextStyle(
//                   // fontWeight: FontWeight.bold,
//                   fontSize: 18.sp,
//                   color: selectedIndex == index
//                   ? AppColors.orange
//                   : Colors.brown,
//                   ),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Container(
//               height: 4,
//               width: 150,
//               decoration: BoxDecoration(
//                 color: selectedIndex == index
//                   ? AppColors.orange
//                   : Colors.transparent,
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(32))
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

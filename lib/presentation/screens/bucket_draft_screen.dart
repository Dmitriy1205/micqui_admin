// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:micqui_admin/presentation/widgets/search_field.dart';
//
// import '../../core/constants/colors.dart';
// import '../../core/constants/strings.dart';
// import '../../core/themes/theme.dart';
// import '../widgets/app_checkbox.dart';
// import '../widgets/app_elevated_button.dart';
//
// class BucketDraftScreen extends StatefulWidget {
//   const BucketDraftScreen({Key? key}) : super(key: key);
//
//   @override
//   State<BucketDraftScreen> createState() => _BucketDraftScreenState();
// }
//
// class _BucketDraftScreenState extends State<BucketDraftScreen> {
//   final _nameController = TextEditingController();
//   final _searchController = TextEditingController();
//   String value = 'All';
//   List<Map<String, dynamic>>? _qustions = [];
//
//   List<bool> isChecked = [];
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(37),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               AppStrings.bucket,
//               style: AppTheme.themeData.textTheme.headlineLarge!
//                   .copyWith(color: AppColors.text),
//             ),
//             Text(
//               'Airplane travelling',
//               style: AppTheme.themeData.textTheme.labelMedium,
//             ),
//             Row(
//               children: [
//                 const FaIcon(
//                   FontAwesomeIcons.solidCircle,
//                   size: 8,
//                   color: AppColors.lightGrey,
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   AppStrings.draft,
//                   style: AppTheme.themeData.textTheme.labelMedium,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 17,
//             ),
//             Expanded(
//               child: Card(
//                 elevation: 5,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 24, right: 24, top: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "${AppStrings.questions} (${_qustions?.length})",
//                             style: AppTheme.themeData.textTheme.titleLarge!
//                                 .copyWith(color: AppColors.text),
//                           ),
//                           Flexible(
//                             flex: 2,
//                             child: SizedBox(
//                               width: 706,
//                               height: 38,
//                               child: SearchField(
//                                   searchController: _searchController,
//
//                                   onChange: (name) {
//                                     // context.read<QuestionnarieBloc>().add(
//                                     //     QuestionnarieEvent.searchByName(
//                                     //         name: name, category: value));
//                                   }),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10),
//                             child: SizedBox(
//                               width: 50,
//                               height: 50,
//                               child: IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     _qustions
//                                         ?.add({'name': 'Name', 'variants': []});
//                                     print(_qustions);
//                                   });
//                                 },
//                                 icon: const FaIcon(
//                                   FontAwesomeIcons.circlePlus,
//                                   color: AppColors.green,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       color: Colors.grey.shade300,
//                       thickness: 1,
//                     ),
//                     _qustions == null
//                         ? const SizedBox()
//                         : Expanded(
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   child: ListView.builder(
//                                       itemCount: _qustions!.length,
//                                       shrinkWrap: true,
//                                       itemBuilder: (context, index) {
//                                         List<dynamic> variants =
//                                             _qustions![index]['variants'];
//                                         isChecked = List.generate(
//                                             variants.length, (index) => false);
//                                         return Container(
//                                           decoration: BoxDecoration(
//                                             border: Border(
//                                               bottom: BorderSide(
//                                                 color: Colors.grey.shade300,
//                                               ),
//                                             ),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 bottom: 19,
//                                                 top: 14,
//                                                 left: 23,
//                                                 right: 23),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceBetween,
//                                                   children: [
//                                                     Text(
//                                                       _qustions![index]
//                                                           ['name']!,
//                                                       style: AppTheme
//                                                           .themeData
//                                                           .textTheme
//                                                           .labelMedium,
//                                                     ),
//                                                     IconButton(
//                                                       constraints:
//                                                           const BoxConstraints(),
//                                                       padding:
//                                                           const EdgeInsets.all(
//                                                               2),
//                                                       onPressed: () {
//                                                         setState(() {
//                                                           _qustions!
//                                                               .removeAt(index);
//                                                         });
//                                                       },
//                                                       icon: const FaIcon(
//                                                         FontAwesomeIcons
//                                                             .solidTrashCan,
//                                                         size: 20,
//                                                         color: AppColors.accent,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 variants.isEmpty
//                                                     ? const SizedBox()
//                                                     : Padding(
//                                                         padding:
//                                                             const EdgeInsets
//                                                                 .only(top: 20),
//                                                         child: answersList(
//                                                             variants),
//                                                       ),
//                                                 const SizedBox(
//                                                   height: 23,
//                                                 ),
//                                                 IconButton(
//                                                     onPressed: () {
//                                                       setState(() {
//                                                         variants.add('value');
//
//                                                         print(isChecked);
//                                                       });
//                                                     },
//                                                     icon: const FaIcon(
//                                                       FontAwesomeIcons
//                                                           .circlePlus,
//                                                       color: AppColors.green,
//                                                     )),
//                                               ],
//                                             ),
//                                           ),
//                                         );
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 38,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                     width: 225,
//                     child: AppElevatedButton(
//                         text: AppStrings.published, onPressed: () {})),
//                 SizedBox(
//                     width: 164,
//                     child: AppElevatedButton(
//                         color: AppColors.accent,
//                         text: AppStrings.delete,
//                         onPressed: () {}))
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget answersList(List<dynamic> variants) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: variants.length,
//       itemBuilder: (context, index) {
//         return Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 right: 20,
//               ),
//               child: AppCheckbox(
//                 size: 32,
//                 iconSize: 22,
//                 selectedIconColor: AppColors.green,
//                 selectedColor: AppColors.white,
//                 borderColor: AppColors.greyWhite,
//                 isChecked: isChecked[index],
//                 onChange: (v) {
//                   setState(() {
//                     isChecked[index] = v;
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   EditableText(
//                     textAlign: TextAlign.start,
//                     controller: _nameController,
//                     style: AppTheme.themeData.textTheme.labelMedium!
//                         .copyWith(fontWeight: FontWeight.w600),
//                     cursorColor: AppColors.primary,
//                     backgroundCursorColor: AppColors.primary,
//                     selectionControls: MaterialTextSelectionControls(),
//                     keyboardType: TextInputType.text,
//                     maxLines: 1,
//                     focusNode: FocusNode(),
//                   ),
//                 ],
//               ),
//             ),
//             IconButton(
//               constraints: const BoxConstraints(),
//               padding: const EdgeInsets.all(2),
//               onPressed: () {
//                 setState(() {
//                   variants.removeAt(index);
//                 });
//               },
//               icon: const FaIcon(
//                 FontAwesomeIcons.solidTrashCan,
//                 size: 20,
//                 color: AppColors.accent,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

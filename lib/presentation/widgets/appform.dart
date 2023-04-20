// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../core/constants/colors.dart';
//
// class MyForm extends StatefulWidget {
//   const MyForm({Key? key}) : super(key: key);
//
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   late FocusNode _nameFocusNode;
//   late FocusNode _emailFocusNode;
//   late FocusNode _phoneFocusNode;
//
//   @override
//   void initState() {
//     super.initState();
//     _nameFocusNode = FocusNode();
//     _emailFocusNode = FocusNode();
//     _phoneFocusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _nameFocusNode.dispose();
//     _emailFocusNode.dispose();
//     _phoneFocusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: EditableText(
//               controller: _nameController,
//               focusNode: _nameFocusNode,
//               cursorColor: Colors.blue,
//               backgroundCursorColor: Colors.grey[300],
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               keyboardType: TextInputType.text,
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               onSubmitted: (text) {
//                 _nameFocusNode.unfocus();
//                 FocusScope.of(context).requestFocus(_emailFocusNode);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: EditableText(
//               controller: _emailController,
//               focusNode: _emailFocusNode,
//               cursorColor: Colors.blue,
//               backgroundCursorColor: Colors.grey[300],
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               keyboardType: TextInputType.emailAddress,
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               onSubmitted: (text) {
//                 _emailFocusNode.unfocus();
//                 FocusScope.of(context).requestFocus(_phoneFocusNode);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: EditableText(
//               controller: _phoneController,
//               focusNode: _phoneFocusNode,
//               cursorColor: Colors.blue,
//               backgroundCursorColor: Colors!.grey![300],
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               keyboardType: TextInputType.phone,
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               onSubmitted: (text) {
//                 _phoneFocusNode.unfocus();
//                 _saveData();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _saveData() {
//     // Save the data to a database or other storage solution
//     String name = _nameController.text;
//     String email = _emailController.text;
//     String phone = _phoneController.text;
//     print('Name: $name, Email: $email, Phone: $phone');
//   }
// }
//
// class MyForm extends StatefulWidget {
//   const MyForm({Key? key}) : super(key: key);
//
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final _nameController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _categoryController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _descriptionController.dispose();
//     _categoryController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           EditableText(
//             controller: _nameController,
//             keyboardType: TextInputType.text,
//             maxLines: 1,
//             backgroundCursorColor: AppColors.primary,
//             cursorColor: AppColors.primary,
//             selectionControls: MaterialTextSelectionControls(),
//             textAlign: TextAlign.start,
//             style: AppTheme.themeData.textTheme.labelMedium!
//                 .copyWith(fontWeight: FontWeight.w600),
//             focusNode: FocusNode(),
//             onSubmitted: (_) =>
//                 FocusScope.of(context).requestFocus(_descriptionFocusNode),
//           ),
//           EditableText(
//             controller: _descriptionController,
//             keyboardType: TextInputType.text,
//             maxLines: 1,
//             backgroundCursorColor: AppColors.primary,
//             cursorColor: AppColors.primary,
//             selectionControls: MaterialTextSelectionControls(),
//             textAlign: TextAlign.start,
//             style: AppTheme.themeData.textTheme.labelMedium!
//                 .copyWith(fontWeight: FontWeight.w600),
//             focusNode: _descriptionFocusNode,
//             onSubmitted: (_) =>
//                 FocusScope.of(context).requestFocus(_categoryFocusNode),
//           ),
//           EditableText(
//             controller: _categoryController,
//             keyboardType: TextInputType.text,
//             maxLines: 1,
//             backgroundCursorColor: AppColors.primary,
//             cursorColor: AppColors.primary,
//             selectionControls: MaterialTextSelectionControls(),
//             textAlign: TextAlign.start,
//             style: AppTheme.themeData.textTheme.labelMedium!
//                 .copyWith(fontWeight: FontWeight.w600),
//             focusNode: _categoryFocusNode,
//             onSubmitted: (_) => _save(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _save() {
//     if (_formKey.currentState!.validate()) {
//       // Save data to database
//       // ...
//     }
//   }
// }
//

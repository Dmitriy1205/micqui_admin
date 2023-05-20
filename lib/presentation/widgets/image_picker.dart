import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/utils.dart';
import '../../data/models/user/user_model.dart';
import 'app_elevated_button.dart';

class ProfileImagePicker extends StatefulWidget {
  final Function(Uint8List) userImage;
  final Widget? avatar;
  final UserModel? user;

  const ProfileImagePicker({
    Key? key,
    required this.userImage,
    required this.avatar,
    this.user,
  }) : super(key: key);

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    String? separatedNickName =
    separateNickName(widget.user?.email);
    String nickName = widget.user?.nickName == null ||
        widget.user!.nickName!.trim().isNotEmpty
        ? widget.user!.nickName!
        : separatedNickName ?? 'M';

    String firstSymbol = nickName[0].toUpperCase();
    return SizedBox(
      height: 138,
      width: 138,
      child: Stack(
        children: [
          widget.avatar == null
              ? Container(
            height: 191,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: _image == null
                  ? const FaIcon(
                FontAwesomeIcons.solidImage,
                size: 36,
                color: AppColors.green,
              )
                  : ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.memory(
                  _image!,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
              : Center(
              child: _image == null
                  ? widget.user?.avatar == null || widget.user!.avatar!.isEmpty
                  ?  CircleAvatar(
                radius: 70,
                backgroundColor: AppColors.colors[firstSymbol],
                child: Center(
                  child: Text(
                    firstSymbol,
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
              )
                  : SizedBox(
                height: 138,
                width: 138,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.network(
                      widget.user!.avatar!,
                      fit: BoxFit.cover,
                    )),
              )
                  : SizedBox(
                height: 138,
                width: 138,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.memory(
                    _image!,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  showPicker(context, func: (f) {
                    widget.userImage(f!);
                  });
                });
              },
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.photo_camera,
                  color: AppColors.background,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showPicker(BuildContext context,
      {required void Function(Uint8List? f) func}) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        ListTile(
                            title: Center(
                              child: Text(
                                'Image',
                                style: AppTheme.themeData.textTheme.titleSmall,
                              ),
                            ),
                            onTap: () {
                              imageFromGallery(context, getImage: (f) {
                                func(f);
                              });

                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 22, right: 22, bottom: 22),
                  child: AppElevatedButton(
                      text: 'cancel'.toUpperCase(),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          );
        });
  }

  Future imageFromGallery(context, {required Function(Uint8List?) getImage}) async {
    final ImagePicker picker = ImagePicker();
    Uint8List image ;
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 480,
      maxHeight: 640,
      imageQuality: 100,
    );
    if (pickedFile != null) {
      image = await pickedFile.readAsBytes();
      _image = image;
      getImage(image);
    } else {
      // print('No image selected.');
    }
  }


}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/homepage/page/home.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:perrybot/features/mainpage.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({super.key});

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffffffff),
          Color(0xffffffff),
          // Color(0xff9e9e),
          Color(0xffFF9E9E),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: SizedBox(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: TouchableOpacity(
                            onTap: (() {
                              Get.back();
                            }),
                            child: SvgPicture.asset(AppAsset.closeIcon)),
                      ),
                      Gap(screenHeight(context) * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.015),
                          TextBold(
                            'Perry',
                            fontSize: 29,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                      Gap(screenHeight(context) * 0.09),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: _image != null
                                      ? Image.file(_image!, fit: BoxFit.cover)
                                      : Image.network(
                                          "https://i.pravatar.cc/100")),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 40,
                            child: TouchableOpacity(
                              onTap: _openImagePicker,
                              child: Container(
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: PerryColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(screenHeight(context) * 0.05),
                      TextBold('Upload a selfie', fontSize: 18),
                      SizedBox(height: screenHeight(context) * 0.08),
                      BusyButton(
                          borderRadius: BorderRadius.circular(10),
                          width: screenWidth(context) * 0.36,
                          title: "done".tr,
                          color: const Color(0xffFFFDF2),
                          onTap: (() {
                            Get.to(const Mainpage());
                          })),
                      Gap(screenHeight(context) * 0.045),
                      BusyButton(
                          borderRadius: BorderRadius.circular(10),
                          width: screenWidth(context) * 0.36,
                          title: "Skip for now".tr,
                          color: const Color(0xffFFFDF2),
                          onTap: (() {
                            Get.to(const Mainpage());
                          })),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

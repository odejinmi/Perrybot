import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffF8F988),
            Color(0xffFF9E9E),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/perrybot/logo.png",
                    height: 29,
                    width: 29,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Perry",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "sign_in".tr,
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0x69fbf7f7),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "email_address".tr,
                      style: TextStyle(fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      // obscureText: obscureText,
                      // controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "e.g.you@email.com",
                        hintStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff263238)),
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff263238)),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (v) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        if (!GetUtils.isEmail(value)) {
                          return "Email is Invalid";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0x69fbf7f7),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "password".tr,
                      style: TextStyle(fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      obscureText: true,
                      // controller: controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "......",
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff263238)),
                          suffixIcon: Icon(Icons.visibility)),
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff263238)),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (v) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }
                        if (!GetUtils.isEmail(value)) {
                          return "Email is Invalid";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                child: Container(
                  height: 54,
                  width: 146,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0x69fbf7f7),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text("sign_in".tr),
                ),
                onTap: () {
                  // Get.toNamed("/createaccount");
                },
              ),
              Spacer(),
              GestureDetector(
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(text: "don’t_have_an_account? ".tr),
                    TextSpan(
                        text: "create_account".tr,
                        style: TextStyle(color: Colors.white)),
                  ]),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  Get.toNamed("/createaccount");
                },
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

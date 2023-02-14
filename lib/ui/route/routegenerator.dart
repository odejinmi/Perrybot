import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/ui/screens/about.dart';
import 'package:perrybot/ui/screens/account.dart';
import 'package:perrybot/ui/screens/auth/createaccount.dart';
import 'package:perrybot/ui/screens/auth/createpassword.dart';
import 'package:perrybot/ui/screens/editprofile.dart';
import 'package:perrybot/ui/screens/mainpage.dart';
import 'package:perrybot/ui/screens/notification.dart';
import 'package:perrybot/ui/screens/onboarding/splash.dart';
import 'package:perrybot/ui/screens/auth/otp.dart';
import 'package:perrybot/ui/screens/payment.dart';
import 'package:perrybot/ui/screens/realEstate/realEstate.dart';
import 'package:perrybot/ui/screens/security.dart';
import 'package:perrybot/ui/screens/settings.dart';

import '../screens/academy.dart';
import '../screens/auth/signin.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    dynamic args = settings.arguments;
    switch (settings.name) {
      case '/':
        return GetPageRoute(
          page: () => const SplashScreen(),
          // case '/':
          //   return GetPageRoute(
          //     page: () => Mainpage(),
          // binding: BindingsBuilder(() {
          //   Get.lazyPut(() => SplashscreenController());
          // })
        );
      case '/academy':
        return GetPageRoute(page: () => const Academy());
      case '/notification':
        return GetPageRoute(page: () => const Notifications());
      case '/account':
        return GetPageRoute(page: () => const Account());
      case '/settings':
        return GetPageRoute(page: () => const Settings());
      case '/editprofile':
        return GetPageRoute(page: () => const Editprofile());
      case '/payment':
        return GetPageRoute(page: () => const Payment());
      case '/security':
        return GetPageRoute(page: () => const Security());
      case '/about':
        return GetPageRoute(page: () => const About());
      case '/signin':
        return GetPageRoute(page: () => const Signin());
      case '/createaccount':
        return GetPageRoute(page: () => const Createaccount());
      case '/otp':
        return GetPageRoute(page: () => const Otp());
      case '/createpassword':
        return GetPageRoute(page: () => const Createpassword());
      case '/realEstate':
        return GetPageRoute(page: () => const RealEstate());

      // case '/privacypolicy':
      //   if (Preferences.init().privacyPolicy) {
      //     if (Preferences.init().loginToken != null) {
      //       return GetPageRoute(page: () => const Home());
      //     } else {
      //       return GetPageRoute(page: () => const Login());
      //     }
      //   } else {
      //     return GetPageRoute(page: () => const PrivacyPolicyIntroScreen());
      //   }
      // // page: () => Intro());
      // case '/login':
      //   return GetPageRoute(page: () => const Login());
      // case '/forgetpassword':
      //   return GetPageRoute(page: () => const Forgetpassword());
      // case '/otp':
      //   return GetPageRoute(
      //     page: () => Otp(
      //       topic: args["topic"],
      //       email: args["email"],
      //     ),
      //   );
      // case '/changepassword':
      //   return GetPageRoute(
      //       page: () => Changepassword(
      //             email: args["email"],
      //             code: args["code"],
      //           ));
      // case '/register':
      //   return GetPageRoute(page: () => const Register());
      // case '/verificationsuccessful':
      //   return GetPageRoute(page: () => const Verificationsuccessful());
      // case '/home':
      //   return GetPageRoute(page: () => const Home());
      // case '/server':
      //   return GetPageRoute(page: () => Severs());
      // case '/premium':
      //   return GetPageRoute(page: () => const Premium());
      // case '/premiumpaying':
      //   return GetPageRoute(page: () => Premiumpaying());
      // case '/carddetails':
      //   return GetPageRoute(page: () => const Carddetails());
      // case '/succesfulpayment':
      //   return GetPageRoute(page: () => const Succesfulpayment());
      // case '/menu':
      //   return GetPageRoute(
      //       page: () => Menu(),
      //       binding: BindingsBuilder(() {
      //         Get.lazyPut(() => Menucontroller());
      //       }));
      // case '/upgradetopremium':
      //   return GetPageRoute(page: () => const Upgradetopremium());
      // case '/serverlist':
      //   return GetPageRoute(page: () => const Serverlist());
      // case '/profile':
      //   return GetPageRoute(page: () => const Profile());
      // case '/updatepassword':
      //   return GetPageRoute(page: () => const Updatepassword());
      // case '/privacypolicy':
      //   return GetPageRoute(page: () => const Privacypolicy());
      // case '/faq':
      //   return GetPageRoute(page: () => const Faq());
      // case '/tellafriend':
      //   return GetPageRoute(page: () => const SharePage());
      // case '/settings':
      //   return GetPageRoute(page: () => const PengaturanPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("No Route"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Sorry no route was found"),
        ),
      );
    });
  }
}

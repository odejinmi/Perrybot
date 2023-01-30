import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocaleString extends Translations {
  var storage = GetStorage();
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          "4_digit_pin": "4 Digit Pin",
          "academy": "Academy",
          "about": "About",
          "about_details": "What’s Perry?"
              "\n\nPerry is a financial social Community of people building wealth digitally while educating and supporting themselves."
              "\n\n\nHow can I benefit from Perry?"
              "\n\n1. The Perry Academy:  as a member of the Perry community, you are trained to build wealth through Handsfree trading and community-building strategies using the Affiliate marketing Model."
              "\n\n2. Perry BOT: All Perry community members have access to a hands-free trading Crypto trading BOT that they can connect to thier Favourite Exchanges like Coinbase & Binance to trade for them."
              "\n\n3. Perry Affiliates: Perry Affiliates are community members who have used Perry products and are happy to help others make money using the same products."
              "\n\nPerry’s Digital Money Baddies: DMB is a women-only Financial empowerment outreach of Perry tech meant to empower and support young  American women who want an extra income that doesn't affect their day-to-day jobs.",
          "account": "Account",
          "account_settings": "Account Settings",
          "affiliates": "Affiliates",
          "basic_info": "Basic Info",
          "biometric": "Biometric",
          "change_card": "Change card",
          "change_phone_number": "Change phone bumber",
          "confirm_otp": "Confirm OTP",
          "confirm_password": "Confirm Password",
          "continue_learning": "Continue learning",
          "create_account": "Create account",
          "create_password": "Create password",
          "didn’t_get_the_code?": "Didn’t get the code?",
          "done": "Done",
          "don’t_have_an_account?": "Don’t have an account?",
          "edit": "Edit",
          "edit_profile": "Edit Profile",
          "enter_your_email_address_and_phone_number":
              "Enter your email address and phone number",
          "email_address": "Email Address",
          "full_name": "Full name",
          "insert_code": "Insert Code",
          "invest": "Invest",
          "login_settings": "Login Settings",
          "notification": "Notification",
          "must_contain_a_special_character_and_camel_case":
              "Must contain a special character and camel case",
          "password": "Password",
          "payment": "Payment",
          "payment_card": "Payment Card",
          "phone": "Phone",
          "phone_number": "Phone number",
          "quick_login_and_transaction": "Quick Login and Transaction",
          "resend": "Resend",
          "remove_card": "Remove card",
          "repeat_password": "Repeat password",
          "quick_actions": "Quick actions",
          "security": "Security",
          "see_new_events": "See New events",
          "settings": "Settings",
          "sign_out": "Sign out",
          "sign_in": "Sign in",
          "support": "Support",
          "switch_to_dark_mode": "Switch to dark mode",
          "upcoming_event": "Upcoming event",
          "username": "Username",
          "welcome": "Hello ${storage.read("name")}, what are we doing today?",
          "we’ve_sent_a_6_digit_code_to_this_number":
              "We’ve sent a 6 digit Code to this number",
        },
        //HINDI LANGUAGE
        'hi_IN': {
          "welcome": "Hello ${storage.read("name")}, what are we doing today?",
        },
        //KANNADA LANGUAGE
        'kn_IN': {
          "welcome": "Hello ${storage.read("name")}, what are we doing today?",
        },
        //Bahasa Indonesia
        'in_ID': {
          "welcome": "Hello ${storage.read("name")}, what are we doing today?",
        },
        //Bahasa Indonesia
        'zh_CN': {
          "welcome": "Hello ${storage.read("name")}, what are we doing today?",
        }
      };
}

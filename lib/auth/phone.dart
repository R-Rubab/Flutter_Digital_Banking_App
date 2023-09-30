import 'package:flutter/material.dart';
import 'package:flutter_application_4/const_colors/const.dart';
import 'package:flutter_application_4/widgets/formfield.dart';

class PhoneNumbers extends StatefulWidget {
  const PhoneNumbers({super.key});

  @override
  State<PhoneNumbers> createState() => _PhoneNumbersState();
}

class _PhoneNumbersState extends State<PhoneNumbers> {
  final phoneNumberscon = TextEditingController();
  bool loading = false;
  // final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color,
        title: const Text('Phone Number'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          120.ph,
          TextFielddForm(
            label: '+92 345 334 234',
            controLer: phoneNumberscon,
            icons: Icons.numbers,
            validation: (value) {
              if (value!.isEmpty) {
                return 'Enter the password';
              }
              return null;
            },
          ),
          Buttons(
            loading: false,
            text: 'Submit',
            onpress: () {
              print('object1234');
              // setState(() {
              //   loading = true;
              // });
              // auth.verifyPhoneNumber(
              //     phoneNumber: phoneNumberscon.text,
              //     verificationCompleted: (_) {
              //       setState(() {
              //         loading = false;
              //       });
              //     },
              //     verificationFailed: (e) {
              //   Utils().toastMessage(e.toString());
              //   setState(() {
              //     loading = false;
              //   });
              // },
              // codeSent: (String verificationId, int? token) {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => VerificationScreen(
              //               verificationId: verificationId)));
              //   setState(() {
              //     loading = false;
              //   });
              // },
              // codeAutoRetrievalTimeout: (e) {
              //   Utils().toastMessage(e.toString());
              //   setState(() {
              //     loading = false;
              //   });
              // });
            },
          ),
          30.ph,
        ],
      ),
    );
  }
}

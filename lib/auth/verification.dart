import 'package:flutter/material.dart';
import 'package:flutter_application_4/const_colors/const.dart';

import '../widgets/formfield.dart';

class VerificationScreen extends StatefulWidget {
  final String verificationId;
  const VerificationScreen({super.key, required this.verificationId});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final verifyNumberscon = TextEditingController();
  bool loading = false;
  // final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color,
        title: const Text('verfication Number'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          120.ph,
          TextFielddForm(
            label: '6 digit code',
            controLer: verifyNumberscon,
            icons: Icons.numbers,
            validation: (value) {
              if (value!.isEmpty) {
                return 'Enter the contact number';
              }
              return null;
            },
          ),
          Buttons(
            loading: false,
            text: 'Submit',
            onpress: () async {
              print('object1234');
              //   setState(() {
              //     loading = true;
              //   });
              //   final credential = PhoneAuthProvider.credential(
              //     verificationId: widget.verificationId,
              //     smsCode: verifyNumberscon.text.toString(),
              //   );
              //   try {
              //     await auth.signInWithCredential(credential);
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const PostScreen()));
              //     setState(() {
              //       loading = false;
              //     });
              //   } catch (e) {
              //     setState(() {
              //       loading = false;
              //     });
              //     Utils().toastMessage(e.toString());
              //   }
            },
          ),
          30.ph,
        ],
      ),
    );
  }
}

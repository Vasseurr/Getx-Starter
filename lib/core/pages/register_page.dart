import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_starter/core/components/buttons/custom_button.dart';
import 'package:getx_starter/core/components/text/text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primary = Colors.blueAccent.shade400;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          header(primary, context),
          const SizedBox(height: 15),
          textField("Fullname", const Icon(Icons.person), context),
          textField("Email", const Icon(Icons.email), context),
          textField("Phone Number", const Icon(Icons.phone), context),
          textField("Password", const Icon(Icons.vpn_key), context),
          const SizedBox(height: 30),
          registerButton(primary, context),
          const SizedBox(height: 30),
          loginButton(primary)
        ],
      ),
    );
  }

  Row loginButton(Color primary) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already a member? "),
        Text(
          "Login ",
          style: TextStyle(color: primary, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  VasseurrBttn registerButton(Color primary, BuildContext context) {
    return VasseurrBttn(
        width: MediaQuery.of(context).size.width * 0.8,
        radius: 20,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        buttonColor: primary,
        borderColor: Colors.white,
        buttonText: "REGISTER",
        onPressed: () {});
  }

  textField(String hintText, Icon icon, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.08,
      child: VasseurrTFF(
        icon: icon,
        hintText: hintText,
        hintColor: Colors.grey,
        fontSize: 18,
        borderColor: Colors.grey.shade200,
        fillColor: Colors.white,
        radius: 50,
        onSaved: (value) => (value),
        textInputAction: hintText != "Password"
            ? TextInputAction.next
            : TextInputAction.done,
        keyboardType: hintText != "Phone Number"
            ? TextInputType.text
            : TextInputType.number,
        obsecureText: hintText != "Password" ? false : true,
      ),
    );
  }

  Container header(Color primary, BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(120),
          )),
      child: Image.asset(
        "assets/images/v.png",
      ),
    );
  }
}

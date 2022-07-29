import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  TextEditingController ctrPhone = new TextEditingController();
  String phone = "";

  // Widget btnRegister(String text){
  //   return Container(
  //     width: 150,
  //     child: ElevatedButton(onPressed: (){
  //       if(ctrNama.text == "" || ctrUsername.text == ""){

  //       }else{
          
  //       }
  //     }, child: Text(text)),
  //   );
  // }

  Widget txtInput(String phone, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: phone,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Phone")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            txtInput("phone", ctrPhone),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (() {
              phone = ctrPhone.text;
              Navigator.pop(context,phone);
            }), child: Text("Confirm"))
          ],
        ),
      ),
    );
  }
}
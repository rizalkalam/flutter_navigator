import 'package:flutter/material.dart';
import 'package:flutter_application_4/inputNomor.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();
  var number = "belum ada";
  String username = "belum ada";
  String name = "belum ada";
  


  Widget txtInput(String username, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: username,
      ),
    );
  }

  Widget btnPhone(String text){
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: ()async{
          final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputPhone())
                );
                setState(() {
                  number = result.toString();
                });
      }, child: Text(text)),
    );
  }

  Widget btnRegister(String text){
    return Container(
      width: 150,
      child: ElevatedButton(onPressed: (){
        setState(() {
        username = ctrUsername.text;
         name = ctrNama.text;
        });
      }, child: Text(text)),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HalamanUtama")),
      body: 
      Container(
        margin: EdgeInsets.all(10),
        child: 
        Column(
          children: [
              txtInput("username", ctrUsername),
              SizedBox(height:  10,),
              txtInput("nama", ctrNama),
              SizedBox(
                height: 5,
              ),
              
              
              
              
              
            Row(
              children: [
                btnPhone("Phone"),
                SizedBox(width: 15,),
                btnRegister("Save")
              ],
            ),
            SizedBox(height: 30,),
              Text("username : $username"),
              SizedBox(height: 10,),
              Text("name : $name"),
              SizedBox(height: 10,),
              Text("phone : $number"),
          ],),
          
      ),
      
    );
  }
}
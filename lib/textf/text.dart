import 'package:flutter/material.dart';

class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {

  TextEditingController txtEmail=TextEditingController();
  String data="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: txtEmail,
            decoration: InputDecoration(
             border: OutlineInputBorder(),
              label: Text("email"),
              prefix: Icon(Icons.add),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              data=txtEmail.text;
            });
          }, child: Text("summ")),
          SizedBox(height: 20),
          Text("$data"),
        ],
      ),
    );
  }
}

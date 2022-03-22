import 'package:flutter/material.dart';

class ENTRY extends StatefulWidget {
  const ENTRY({Key? key}) : super(key: key);

  @override
  State<ENTRY> createState() => _ENTRYState();
}

class _ENTRYState extends State<ENTRY> {

  TextEditingController empname = TextEditingController();
  TextEditingController empcode = TextEditingController();
  TextEditingController empdesignation = TextEditingController();
  TextEditingController empsalary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(0)),

            SizedBox(
              height: 120,
            ),


            Text("REGISTER", style: TextStyle(
                fontSize: 40, color: Colors.blue
            ),),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: empname,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.blueAccent,),
                  labelText: "ENTER NAME",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(
              height: 12,
            ),

            TextField(
              controller: empcode,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.confirmation_number, color: Colors.blueAccent,),
                  labelText: "ENTER EMPLOYEE CODE",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(
              height: 12,
            ),

            TextField(
              controller: empdesignation,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline, color: Colors.blueAccent,),
                  labelText: "ENTER DESIGNATION",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: empsalary,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.attach_money, color: Colors.blueAccent,),
                  labelText: " ENTER SALARY",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  )
              ),
            ),
            SizedBox(
              height: 12,
            ),

            RaisedButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),

              onPressed: () {
                var Getempname = (empname.text);
                var Getempcode = (empcode.text.toString());
                var Getempdesignation = (empdesignation.text);
                var Getempsalary = ((empsalary.text.toString()));


                print(empname.text);
                print(empcode.text);
                print(empdesignation.text);
                print(empsalary.text);
              }, child: Text("REGISTER", style: TextStyle(
                color: Colors.white, fontSize: 18
            ),),)
          ],
        ),
      ),
    );
  }
}

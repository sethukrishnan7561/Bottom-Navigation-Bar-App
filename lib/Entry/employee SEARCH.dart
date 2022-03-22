import 'package:flutter/material.dart';

class EmployeeSearch extends StatefulWidget {
  const EmployeeSearch({Key? key}) : super(key: key);

  @override
  State<EmployeeSearch> createState() => _EmployeeSearchState();
}

class _EmployeeSearchState extends State<EmployeeSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              "SEARCH",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(padding: const EdgeInsets.all(0)),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.confirmation_number,
                    color: Colors.blueAccent,
                  ),
                  labelText: "ENTER EMPLOYEE CODE",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
            SizedBox(
              height: 12,
            ),
            RaisedButton(
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              onPressed: () {},
              child: Text(
                "SEARCH",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}

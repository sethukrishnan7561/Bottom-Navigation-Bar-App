import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  List employeename = [];
  List employeecode = [];
  List employeedesignation = [];
  List employeesalary = [];

  TextEditingController EmployeeName = TextEditingController();
  TextEditingController EmployeeCode = TextEditingController();
  TextEditingController EmployeeDesignation = TextEditingController();
  TextEditingController EmployeeSalary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.all(0)),
              SizedBox(
                height: 120,
              ),
              Text(
                "VIEW DETAILS",
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: EmployeeName,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blueAccent,
                    ),
                    labelText: "ENTER EMPLOYEE NAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: EmployeeCode,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.confirmation_num,
                      color: Colors.blueAccent,
                    ),
                    labelText: "ENTER EMPLOYEE CODE",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: EmployeeDesignation,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.blueAccent,
                    ),
                    labelText: "ENTER DESIGNATION",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: EmployeeSalary,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.attach_money,
                      color: Colors.blueAccent,
                    ),
                    labelText: "ENTER SALARY",
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
                onPressed: () {
                  var Getempname = EmployeeName.text;
                  var Getempcode = EmployeeCode.text.toString();
                  var Getempdesignation = EmployeeDesignation.text;
                  var Getempsalary = EmployeeSalary.text.toString();

                  setState(() {
                    employeename.add(Getempname);
                    employeecode.add(Getempcode);
                    employeedesignation.add(Getempdesignation);
                    employeesalary.add(Getempsalary);
                  });

                  print(Getempname);
                },
                child: Text(
                  "VIEW",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      employeename.length == null ? 0 : employeename.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                        title: Text(employeename[index]),
                        trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                employeename.removeAt(index);
                                employeecode.removeAt(index);
                                employeedesignation.removeAt(index);
                                employeesalary.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.black,
                              size: 30,
                            )),
                        subtitle: Text("EMPLOYEE CODE :" +
                            employeecode[index] +
                            "\n" +
                            "DESIGNATION : " +
                            employeedesignation[index] +
                            "\n " +
                            "SALARY :" +
                            employeesalary[index]),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CreatNewColections extends StatelessWidget {
  const CreatNewColections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(clipBehavior: Clip.none, children: <Widget>[
            Positioned(
              right: 10,
              left: 10,
              top: -10,
              child: Container(
                height: 510,
                width: 400,
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20), right: Radius.circular(20)),
                      color:  Colors.grey),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color: Colors.white),
                width: double.infinity,
                height: 500,
                child: Column(

                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 40),
                                child: TextField(
                                  
                                  decoration: InputDecoration(
                                    hintText: "Type name",
                                    filled: true, 
                                    fillColor: Color.fromARGB(255, 200, 225, 228),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromARGB(255, 200, 225, 228)),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color.fromARGB(255, 200, 225, 228)),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 360,
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('CREATE COLECTION'),
                                  style: ElevatedButton.styleFrom(
                                      shape: StadiumBorder()),
                                ),
                              ),
                            ],
                          )),
                    ])),
            Positioned(
                top: -20.0,
                right: 180,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(172, 194, 192, 192)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.grey,
                  ),
                ))
          ])
        ],
      ),
    );
  }
}

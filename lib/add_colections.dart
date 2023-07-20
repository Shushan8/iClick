import 'package:flutter/material.dart';

class AddToColections extends StatelessWidget {
  const AddToColections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(clipBehavior: Clip.none, children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color: Colors.white),
                width: double.infinity,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Save to collection',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('New Collection'),
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        'Your Collections',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                        child: SizedBox(
                            height: 370,
                            child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 4,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 4 / 4,
                                        mainAxisSpacing: 25,
                                        // crossAxisSpacing: 25,
                                        mainAxisExtent: 160),
                                itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: Container(
                                        width: 80,
                                        child: Image.asset(
                                          'assetc/images/Cards.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ))))
                  ],
                )),
            Positioned(
                top: -20.0,
                right: 180,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color.fromARGB(172, 194, 192, 192)),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                    child: Icon(Icons.dangerous_outlined , color: Colors.grey,),
                ))
          ])
        ],
      ),
    );
  }
}

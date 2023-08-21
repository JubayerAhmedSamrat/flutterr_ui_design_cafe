import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,


      ),
      home: const MyHomePage(title: 'Home'),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double widgetHeight = 170;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ), onPressed: () {
              
          }

          ),

        ],
        leading: IconButton(onPressed: (){}, icon: Icon(
          Icons.dehaze,
        )),
      ),
      body:Center(

        child: SingleChildScrollView(
          // padding: EdgeInsets.only(
          //   left: 20,
          //   right: 20,
          // ),
          child: Column(

            children: [

              Row(
                children: [
                  SizedBox(
                    width: 61,
                  ),
                  Container(
                    width:16,
                    height:widgetHeight,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius:  BorderRadius.only(
                      topRight:Radius.circular(12),
                      bottomRight:Radius.circular(12),
                    ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child:RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,

                        ),
                        children: <TextSpan>[
                          TextSpan( text: ' Good Afternoon, jubaye ahmed\n', style: TextStyle( fontWeight: FontWeight.bold),),
                          TextSpan(text: 'Cafe service(Sat - thurs)-9.00am to 6.00pm'),
                        ]
                      )
                    )
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),

              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "search in Q cafe",
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                // padding: EdgeInsets.only(
                //   top: 12,
                //   left: 12,
                // ),

                width:400,
                height:widgetHeight-40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)
                  ),
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top:12,
                        left: 12,
                      ),
                      child: RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,

                              ),
                              children: <TextSpan>[
                                TextSpan( text: 'Tea/Coffee\n', style: TextStyle( fontWeight: FontWeight.bold),),
                                TextSpan(text: 'Order now on your favourites!'),
                              ]
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 79,
                        bottom: 0,
                      ),

                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(50),

                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/tea4.png'),
                          fit: BoxFit.fill,
                        )
                      ),
                    ), // stylist image decoration
                  ],
                ),


              ),
              Container(
                width:400,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[900],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 12,
                    top: 6,
                  ),
                  child: Text("View all ->", style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white, )),
                )
              ),


              SizedBox(
                height: 18,
              ),

              Container(
                width:400,
                height:widgetHeight,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(

                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 44,
                              top: 6,
                            ),
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange[800],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              )
                            ),
                            child: Text("Snacks", style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),),
                          ), // top container
                          Container(
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              image:  new DecorationImage(
                                image: AssetImage('assets/images/snacks3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),

                          ), // middle container -> product image

                          Container(
                            padding: EdgeInsets.only(
                              left: 28,
                            ),
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,

                            ),
                            child: Text("Anything tou need,\n        delivered", style: TextStyle(
                                fontSize: 12,fontWeight:FontWeight.bold, color: Colors.black),),
                          ), // bottom container
                        ],
                      )
                    ), // first container in series
                    SizedBox(
                      width: 10,
                    ),
                    Container(

                      child: Column(

                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 44,
                              top: 6,
                            ),
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange[800],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              )
                            ),
                            child: Text("Bevarage", style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),),
                          ), // top container
                          Container(
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              image:  new DecorationImage(
                                image: AssetImage('assets/images/beverage.png'),
                                fit: BoxFit.fill,
                              ),
                            ),

                          ), // middle container -> product image

                          Container(
                            padding: EdgeInsets.only(
                              left: 28,
                            ),
                            height: 40,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,

                            ),
                            child: Text("Essentials deliverd,\n        in 20 Min", style: TextStyle(
                                fontSize: 12,fontWeight:FontWeight.bold, color: Colors.black),),
                          ), // bottom container
                        ],
                      )
                    ), // second container in series

                  ]
                ),

              ),
            ]
          ),
        ),
      )
    );
  }
}

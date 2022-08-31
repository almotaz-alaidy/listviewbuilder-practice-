import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List icon = [
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.laptop),
    Icon(Icons.phone_android_sharp),
    Icon(Icons.phone_android_sharp),
    Icon(Icons.phone_android_sharp),
    Icon(Icons.phone_android_sharp),
    Icon(Icons.phone_android_sharp),
    Icon(Icons.phone_android_sharp),
  ];
  List titleL = [
    "laptopes",
    "dell",
    "HP",
    "apple",
    "huawei",
    "lenova",
    "accer",
    "phones",
    "samsung",
    "huawei",
    "apple",
    "chawmi",
    "infinix",
  ];
  List subtitleL = [
    "laptpes device",
    "dell devices its berfect divicis and there quality is very highe",
    "HP devices its quality is very high but its tempreture increse fast",
    "apple devices is so hihge quality and performance but theire price is expinsive",
    "Huawei devices are Chinese devices that are characterized by cheap price and high quality",
    "lenova devices its sutible for regular use and its so cheape",
    "accer its good devices to use and its cheap also",
    "phone device",
    "samsung device is very hihge quality device , the prices its sutaple for all people , but if the divice break you will breffere to change it thane fix it ",
    "Huawei devices are Chinese devices that are characterized by cheap price and high quality",
    "apple device its so berfect divice to use ",
    "chawmi its cheper device and good performance",
    "infinix its also cheap and have good performance",
  ];
  List images = [
    Image(
      image: AssetImage("images/laptps.jpg"),
    ),
    Image(
      image: AssetImage("images/dell.webp"),
    ),
    Image(
      image: AssetImage("images/hp.jpg"),
    ),
    Image(
      image: AssetImage("images/apple.jpg"),
    ),
    Image(
      image: AssetImage("images/huawei.jpg"),
    ),
    Image(
      image: AssetImage("images/lenova.jpg"),
    ),
    Image(
      image: AssetImage("images/acer.webp"),
    ),
    Image(
      image: AssetImage("images/phones.webp"),
    ),
    Image(
      image: AssetImage("images/samsung.jpg"),
    ),
    Image(
      image: AssetImage("images/huawei phone.jpg"),
    ),
    Image(
      image: AssetImage("images/apple phone.webp"),
    ),
    Image(
      image: AssetImage("images/shawmi.jpg"),
    ),
    Image(
      image: AssetImage("images/infinix.jpg"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "welcome to shop center",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 400),
                  height: 781,
                  //  child: Text(
                    
                  //   "contact us : almotazalaidy36@gmail.com",style: TextStyle(fontSize: 22,color: Colors.black),
                  // ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/5.jpg"), fit: BoxFit.cover),
                  ),
                  
                 
                ),
                // Container(
                //   // padding: EdgeInsets.only(top: 500),

                //   child: Text(
                //     "contact us : almotazalaidy36@gmail.com",style: TextStyle(fontSize: 22,color: Colors.black),
                //   ),
                // ),
              ],
            )),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            image: DecorationImage(  

              image: AssetImage("images/3.webp"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: 13,
            itemBuilder: (BuildContext context, int x) {
              return ListTile(
                tileColor: Colors.black,
                title: Text(
                  titleL[x],
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                subtitle: Text(
                  subtitleL[x],
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 37, 0, 51)),
                ),
                leading: icon[x],
                iconColor: Color.fromARGB(255, 8, 223, 234),
                trailing: images[x],
              );
            },
          ),
        ),
      ),
    );
  }
}

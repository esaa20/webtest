
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data_home_screen.dart';
import 'catogres.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('شركة السراج المضيء', style: TextStyle(fontFamily: 'Cairo', fontSize: 28),),
        backgroundColor: Color(0xFFF670000),
      ),
      drawer: DrawerHead(),
      body: ListView.builder(
        itemCount: DataHomeScreen.length!,
        itemBuilder: (context, index){
          final hight = MediaQuery.of(context).size.height ;
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return Catogtiy(cag: df[index].cagg, title: DataHomeScreen[index]['name']!, mmg: df[index].img,);
              }));
            },
            child: Padding(
              padding:  EdgeInsets.all(hight*0.0230447),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),),
                elevation: 15,
                child: Stack(
                  children: [
                    Container(
                      height: hight*0.3073,
                      width: hight*0.4481,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(DataHomeScreen[index]['image']!,),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: hight*0.3073,
                      width: hight*0.4481,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfffD9D9D9).withOpacity(0.8),
                      ),
                      child: Center(
                        child: Text(DataHomeScreen[index]['name']!, style: TextStyle(fontFamily: 'Cairo', fontSize: 28 , color: Color(0xfff670000) , fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height ;
    print(hight);
    return Drawer(
      backgroundColor: Color(0xFFF670000),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                height: hight*0.3072626,
                width: hight*0.384078217,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/drawer.png')
                  )
                ),
              ),
              Text('شركة السراج المضيء',style: TextStyle(fontFamily: 'Cairo',fontSize: 24, color: Colors.white),),
              Text('لتكنولوجيا المعلومات و الحلول المتكاملة',style: TextStyle(fontFamily: 'Cairo',fontSize: 16, color: Colors.white),) ,
              Padding(
                padding:  EdgeInsets.only(top: hight*0.12803, left: hight*0.02561),
                child: Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Icon(Icons.phone , color: Color(0xfffD9D9D9), size: 32,),
                    SizedBox(width: hight*0.02561,),
                    Text('07803356000', style: TextStyle(color:Color(0xfffD9D9D9) , fontSize: 22 ),),
                  ],
                ),
              ),
               Divider(height: 35, thickness: 1, color: Color(0xfffD9D9D9), indent: 20, endIndent: 20,),
              Padding(
                padding:  EdgeInsets.only(left: hight*0.02561),
                child: Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Icon(Icons.email , color: Color(0xfffD9D9D9), size: 32,),
                    SizedBox(width: hight*0.02561,),
                    Text('info@alseraj.com.iq', style: TextStyle(color:Color(0xfffD9D9D9) , fontSize: 22 ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

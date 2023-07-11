import 'package:flutter/material.dart';

class Catogtiy extends StatelessWidget {
  String title ;
   List cag ;
   List mmg;
  Catogtiy({
    required this.title,
    required this.cag,
    required this.mmg
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(fontFamily: 'Cairo', fontSize: 28),),
        backgroundColor: Color(0xFFF670000),
      ),
      body: ListView.builder(
        itemCount: cag.length,
          itemBuilder: (ctx,index){
            final hight = MediaQuery.of(context).size.height ;
          return  Padding(
            padding: const EdgeInsets.all(18.0),
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
                          image: AssetImage(mmg[index],),
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
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(cag[index], style: TextStyle(fontFamily: 'Cairo', fontSize: 28 , color: Color(0xfff670000) , fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
          }
      ),
    );
  }
}

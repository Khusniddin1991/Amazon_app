import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class MyApp extends StatefulWidget {
  static final String id='MyApp';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      // # header side for application
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 100,child:  Image(image: AssetImage('asset/images/amazon_logo.png'),),)
            ,Row(children: [
              IconButton(icon:Icon(Icons.mic,color: Colors.white,), onPressed:(){}),
              IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,), onPressed:(){})
            ],)
          ],
        ),
      ),drawer: Drawer(),
      body:Container(
        color:Colors.grey[300],
        child: Column(
          children: [
            // # search side for this application
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              height: 60,
              color:Color(0xFF018197),
              child:Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 1
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white

                ),
                child:Row(children: [
                  Expanded(
                    child: TextField(
                      decoration:InputDecoration(
                        hintText:'What are you looking for ?',
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                        border: InputBorder.none,
                        icon: IconButton(icon: Icon(Icons.search,color: Color(0xFF018197),),onPressed: (){},),

                      ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.camera_alt,color: Color(0xFF018197),),onPressed: (){},),
                ],),
              ),
            ),
            // adds
            Expanded(child:ListView(children: [
              // adds
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                color: Colors.blueGrey,
                height: 45,
                child: Row(children: [
                  Icon(Icons.location_on,color: Colors.white,),
                  SizedBox(width:5,),
                  Text('Deliver to Korea, Republic of ',style: TextStyle(color: Colors.white),)
                ],),


              ),
              Container(height: 140,
                child: Row(
                  children: [
                    Expanded(child:Container(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight:Radius.circular(70),bottomRight: Radius.circular(70)),
                            color: Colors.white,
                            image:DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('asset/images/image_1.jpeg')
                            )
                        ),
                      ),
                    )),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      width: 180,
                      color: Colors.white,
                      child: Center(child: Text('We will able to ship 45 million products on time',style: TextStyle(fontSize: 16),)),

                    )

                  ],
                ),

              ),
              SizedBox(height: 9,),
              Container(height:160,
                color: Colors.white,
                padding: EdgeInsets.only(left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign in for the best experience ', style: TextStyle(color: Colors.black,fontSize: 18),),
                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: (){print('go');},
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.orange,
                        child: Center(child: Text('Sign in',style: TextStyle(color:Colors.white,fontSize: 18),)),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('Create Account',style: TextStyle(color: Colors.blueAccent,fontSize: 18),)


                  ],
                ),


              )
              ,
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Deal of the day',style: TextStyle(fontSize: 22),),
                    SizedBox(height: 10,),
                    Container(
                      height: 240,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/item_7.jpeg'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text('Up to 31%  off APC UPC Battery Back',style: TextStyle(fontSize: 17),),
                    SizedBox(height: 6,),
                    Text('\$10.99 - \$79.9',style: TextStyle(fontSize: 17),),



                  ],
                ),

              ),
              SizedBox(height: 9,),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Top products in camera',style: TextStyle(fontSize: 22),),
                    SizedBox(height: 16,),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        Expanded(child:Image(width: MediaQuery.of(context).size.width,image: AssetImage('asset/images/item_7.jpeg'),fit: BoxFit.cover,)),
                        SizedBox(height:8 ,),
                        Expanded(
                          child: Row(children: [
                            Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image: AssetImage('asset/images/item_5.jpeg'),fit: BoxFit.cover)),)),
                            SizedBox(width:8 ,),
                            Expanded(child: Container(decoration: BoxDecoration(image:DecorationImage(image: AssetImage('asset/images/item_4.jpeg'),fit: BoxFit.cover))))
                          ],),
                        )
                      ],),


                    )




                  ],
                ),
              )


            ],)),





          ],
        ),
      )

      ,));
  }
}

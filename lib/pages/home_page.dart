import 'package:ebook/constantes.dart';
import 'package:ebook/widgets/Book_reading.dart';
import 'package:ebook/widgets/Reading_cart_list.dart';
import 'package:ebook/widgets/two_rounded.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/main_page_bg.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                      TextSpan(text: " What are you \n reading "),
                      TextSpan(
                          text: "Today ?",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[ 
                    ReadingBook(
                    img: "assets/images/book-1.png",title:"Crushing and influence" ,
                    auth: "Gary venkuk",rating: 4.9,text: "Read",
                  
                    ),

                     ReadingBook(
                    img: "assets/images/book-2.png",
                    title:"Top Ten Buiness hacks" ,
                    auth: "Herman joel",rating: 4.8,
                    text: "Read",
                    ),
                    SizedBox(width: 30,),
                   ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(text: "Best of the "),
                        TextSpan(text: "day",style: TextStyle(fontWeight: FontWeight.bold))
                      ]
                    ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        height: 205,
                        child: Stack(
                          children: <Widget> [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                               child: Container(
                                 padding: EdgeInsets.only(left: 24,top: 24,right: size.width*.35),
                              height: 185,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFEAEAEA).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(" New york Time Best  for 11th March 2020 ",
                                  style: TextStyle(fontSize: 9,color: kLightBlackColor),
                                  ),
                                SizedBox(height: 5,),
                                Text("How to win Friends\n and influences",style: Theme.of(context).textTheme.subtitle1,),
                                Text("Gary Venchuck",style: TextStyle(color: kLightBlackColor),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    BookReading(rading: 4.9,),
                                    SizedBox(width: 10,),
                                    Expanded(child: Text("when the earch was flat and everyone to win the game of the best and people",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 9,color: kLightBlackColor),
                                    ),
                                    )
                                  ],
                                ),
                                ],
                              ),
                            ),
                            ),
                            Positioned(
                              right:0,
                              top:0,
                              child: 
                              Image.asset("assets/images/book-3.png"),width: size.width*.37,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: SizedBox(height: 40,width: size.width*.3,
                                child: TwoSideRoundedButton(text: "Read",)
                              ),),
                          ],
                        ),
                      ),
                     RichText(text: TextSpan(
                       style: Theme.of(context).textTheme.headline5,
                       children: [
                         TextSpan(text: "Continue ",),
                         TextSpan(text: "Reading",style: TextStyle(fontWeight: FontWeight.bold),),
                       ]
                     )
                     ),
                     SizedBox(height: 20,),
                     Container(
                       height: 80,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(38.5),
                         boxShadow: [
                           BoxShadow(
                             offset: Offset(0,10),blurRadius: 33,
                             color: Color(0xFFD3D3D3).withOpacity(0.84),
                           ),
                         ]
                       ),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(40),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Expanded(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 30,right: 20),
                                 child: Row(
                                   children:[  Expanded(
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.end,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Crushing and influences",style: TextStyle(fontWeight:FontWeight.bold,
                                       )),
                                       Text("Gary Venchuk",style: TextStyle(color: kLightBlackColor),
                                       ),
                                       Align(
                                         alignment:Alignment.bottomRight,
                                         child: Text("Chapter 7 pf 10",style: TextStyle(fontSize: 10,color: kLightBlackColor),),
                                       )
                                     ],
                                   ),
                                   ),
                                       Image.asset("assets/images/book-1.png",width: 55,)
                              ],
                                 ),
                               ),
                             ),
                             Container(
                               height: 7,
                               width: size.width*.6,
                               decoration: BoxDecoration(
                                 color: kProgressIndicator,
                                 borderRadius: BorderRadius.circular(7)),
                               
                             ),
                           
                           ],
                         ),
                       ),
                     ),
                      SizedBox(height: 40,),
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


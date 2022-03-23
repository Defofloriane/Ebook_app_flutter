import 'package:ebook/constantes.dart';
import 'package:ebook/widgets/rounded.dart';
import 'package:flutter/material.dart';
import 'rout.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      home: HomeScreen(),
      onGenerateRoute: router.generateRoute,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Bitmap.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline3,
                  children: [
                    TextSpan(
                      text: "flamin",
                    ),
                    TextSpan(
                      text: "go.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //style: Theme.of(context).textTheme.display3),
                  ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
               
              ),
            ),
          ],
        ),
      ),
    );
  }
}

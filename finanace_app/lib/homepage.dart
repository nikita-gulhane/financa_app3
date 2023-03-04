import 'package:flutter/material.dart';
import 'package:finanace_app/firstscreen.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.tealAccent,
      backgroundColor: HexColor('#f4f0fd'),
      // resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 120.0),
               child: Container(
                 height: 140,
                 width: 140,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                     color: HexColor('#12267a'),
                    ),
                 child: Center(
                   child: FlutterLogo(
                     size: 100,
                     textColor: Colors.blue,
                     style: FlutterLogoStyle.stacked,
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20.0),
               child: SizedBox(
                 height: 100.0,
                 width: 325.0,
                 child: Container(
                   // margin: EdgeInsets.only(left: 20.0),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       Padding(
                         padding: EdgeInsets.only(left: 30.0, top: 20),
                         child: Text("Email Address",style: TextStyle(color: Colors.black12,fontSize: 15),),
                       ),
                       Container(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 15.0),
                           child: TextField(
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "UserName@gmail.com",
                               prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:20.0),
               child: SizedBox(
                 height: 100.0,
                 width: 325.0,
                 child: Container(
                   // margin: EdgeInsets.only(left: 20.0),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       Padding(
                         padding: EdgeInsets.only(left: 30.0, top: 20),
                         child: Text("Password",style: TextStyle(color: Colors.black12,fontSize: 15),),
                       ),
                       Container(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 15.0),
                           child: TextField(
                             obscuringCharacter: "*",
                             obscureText: true,
                             decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: "Password",
                                 prefixIcon: Icon(Icons.lock_outline,color: Colors.black,),
                               suffixIcon: IconButton(
                                 icon: Icon(passwordVisible
                                     ? Icons.visibility
                                     : Icons.visibility_off,color: Colors.black,),
                                 onPressed: () {
                                   setState(
                                         () {
                                       passwordVisible = !passwordVisible;
                                     },
                                   );
                                 },
                               ),
                                alignLabelWithHint: false,
                               //  filled: true,
                             ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:20.0),
               child: SizedBox(
                 height: 50,
                 width: 325,
                 child: Container(
                   // margin: EdgeInsets.only(left: 20),
                   child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                      }, child: Text(
                     "Login",style: TextStyle(fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#12267a'),
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                   ),
                   ),
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 50.0,top: 8),
                   child: Text("Sign Up",style: TextStyle(color: Colors.black12,fontSize: 13),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 25.0,top: 8),
                   child: Text("Forgor Password?",style: TextStyle(color: Colors.black12,fontSize: 13),),
                 )
               ],
             ),
           ],
            ),
      ),
    );
  }
}

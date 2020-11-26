import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactDetail extends StatefulWidget {
  _ContactDetailPageState createState() => new _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetail> {


  @override
  void initState()
  {
    super.initState();
  }


  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xff007E33),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back,color: Colors.white), onPressed: (){
              Navigator.pop(context);
            },)
          ],
          title: Text('Contact A - Details',style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: Colors.white,  fontSize: 20, fontWeight:FontWeight.w600
              )
          ),),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                  key:  _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration:  new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/user.png')
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 110.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("CodeLikeIce",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("justlikeice@mail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("+86789964612567",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      TextFormField(
                        decoration: InputDecoration(labelText: 'First Name'),
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(labelText: 'Last Name'),
                      ),
                      SizedBox(height:20.0),
                      Align(
                        alignment: Alignment.centerLeft,
                            child:  ButtonTheme(minWidth: 100.0,
                         child: RaisedButton.icon(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                             onPressed: null,
                             icon: Icon(Icons.image),
                             label: Text('Upload Image', style: TextStyle(color: Colors.white),),
                             textColor: Colors.white,
                             splashColor: Colors.black,

                         ),
                            )
                      ),

                      SizedBox(height: 20.0,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ButtonTheme(
                          minWidth:   100.0,
                          height: 40,
                          child: RaisedButton.icon(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            label: Text('Save', style: TextStyle(color: Colors.white),),
                            icon: Icon(Icons.arrow_forward, color: Colors.white,),
                            textColor: Colors.white,
                            splashColor: Colors.black,
                            color: Colors.green[900],
                            onPressed: () {
                            },
                          ),
                        ),
                      ),


                    ],
                  )
              ),
            ),
          )

        )
      ),
    );
  }

}


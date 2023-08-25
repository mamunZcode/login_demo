import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
    theme: ThemeData(
      canvasColor: Colors.orangeAccent,
      appBarTheme: AppBarTheme(
        color: Colors.redAccent,
        iconTheme: IconThemeData(color: Colors.red)
      )
    ),
  ),
  );
}

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _login();
  }
}

class _login extends State<login> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 48.0,
                fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: ListView(
              children: [
                getimageAsset(),
                Container(
                  child: Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          keyboardType: TextInputType.text,
                          controller: userNameController,
                          decoration: InputDecoration(
                              labelText: "Enter Your name",
                              hintText: "Mamun",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Container(
                  child: Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          keyboardType: TextInputType.text,
                          controller: passwordController,
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "12157",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(onPressed:(){
                      setState(() {
                      });
                    },
                      icon: Icon(Icons.image,),
                      label: Text("login",style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(onPressed: (){
                      setState(() {
                        reset();
                      });
                    },
                       label: Text('reset',style: TextStyle(color: Colors.black),),
                      icon: Icon(Icons.add_card),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget getimageAsset() {
    AssetImage assetImage = AssetImage('image/love2.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
    );
  }

  Widget getimageAsset2() {
    AssetImage assetImage = AssetImage('image/love.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
    );
  }

  Widget getimageAsset3() {
    AssetImage assetImage = AssetImage('image/newws.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
    );
  }

  void reset(){
    userNameController.text='';
    passwordController.text='';
  }
}

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= Container(
      height: 200.00,
      child: Container(
  
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/c1.jpg'),
            AssetImage('images/m1.jpeg'),
            AssetImage('images/m2.jpg'),
            AssetImage('images/w1.jpeg'),
            AssetImage('images/w3.jpeg'),
             AssetImage('images/w4.jpeg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 500 ),
          dotSize: 10.0,
          dotIncreasedColor: Colors.deepOrangeAccent,
         dotVerticalPadding: 5.0,
          dotColor: Colors.white,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Container( padding: EdgeInsets.only(bottom: 6.0),child: Image(image: AssetImage('images/logoenletras.PNG'), width: 250.00)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jesús Cirineo"),
              accountEmail: Text("jesus07098@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                   
                backgroundColor: Colors.black,
                child: Icon(
                  
                  Icons.person,
                  color: Colors.white,
                  size: 45.0,

                ),
              )),
              decoration: BoxDecoration(color: Colors.red),
            ),
            //CUERPO DEL DRAWER
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home, color: Colors.blue[800],),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mi cuenta'),
                leading: Icon(Icons.person,  color: Colors.blue[800]),
              ),
            ),
             Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mis pedidos'),
                leading: Icon(Icons.shopping_basket,color: Colors.blue[800]),
              ),
            ),
             Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Departamentos'),
                leading: Icon(Icons.dashboard, color: Colors.amber,),
              ),
            ),
             Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favoritos'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Configuraciones'),
                leading: Icon(Icons.settings , color: Colors.blue,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Centro de ayuda'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel
        ],
      )
    );
  }
}

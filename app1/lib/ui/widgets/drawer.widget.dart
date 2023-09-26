import 'package:app1/config/global.params.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.deepOrange
                  ]
              )
          ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(

                      backgroundImage: AssetImage("images/img.jpeg"
                      ),
                      radius: 30,
                    ),
                    CircleAvatar(

                      backgroundImage: AssetImage("images/img.jpeg"
                      ),
                      radius: 60,
                    ),
                  ],
                ),
              )
          ),
          ...(GlobalParams.menus as List).map((item) {
            return Column(
              children: [
                ListTile(
                  title: Text('${item['title']}',style: TextStyle(fontSize: 22),),
                  leading: item['icon'],
                  trailing: Icon(Icons.arrow_right,color: Colors.orange,),
                  onTap: (){
                    Navigator.of(context).pop();/*bsh fsh trj3 trj3 lhome direct*/
                    Navigator.pushNamed(context,"${item['route']}");/*fsh twrk 3la home tdek leha*/
                  },
                ),
                Divider(color: Colors.deepOrange,height: 4,)
              ],
            );
          })
        ],
      ),
    );
  }
}

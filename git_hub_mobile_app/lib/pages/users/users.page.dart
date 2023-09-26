import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class UsersPage extends StatefulWidget {
  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  String query='';
  bool notVisible=false;
  TextEditingController queryTextEditingController=new TextEditingController();
  dynamic data;
  void _search(String query) {
    String url="api.github.com/search/users?q=${query}&per_page=20&page=0";
    http.get(url)
        .then((response) {
setState(() {
  this.data=json.decode(response.body);
});
    })
    .catchError((err){
print(err);
    });
  }
  @override
  Widget build(BuildContext context) {
    print("Building page ....");
    return Scaffold(
        appBar: AppBar(title: Text('Users => ${query}'),),
        body: Center(
          child: Column(
            children: [
     Row(
       children: [
         Expanded(
           child: Container(
               padding: EdgeInsets.all(10),
               child: TextFormField(
                 obscureText: notVisible,
                 onChanged: (value){
                   setState(() {
                     this.query=value;
                   });
                 },
                 controller: queryTextEditingController,
                 decoration: InputDecoration(
                   // icon: Icon(Icons.logout),
                     suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           notVisible=!notVisible;
                         });
                       },
                       icon: Icon(
                         notVisible==true?Icons.visibility_off:Icons.visibility
                       ),
                     ),

                     contentPadding: EdgeInsets.only(left: 20),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(50),
                         borderSide: BorderSide(
                             width: 1, color: Colors.deepOrange
                         )
                     )
                 ),
               )
           ),
         ),
         IconButton(
           icon: Icon(Icons.search, color:Colors.deepOrange),
           onPressed: (){
           setState(() {
             this.query=queryTextEditingController.text;
             _search(query);
           });
           }
           )
       ],
     ),
              ListView.builder(itemBuilder: null)
            ],
          )
        ),
    );
  }


}

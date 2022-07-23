import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return 
      Scaffold(  
       
        body: Column(
          children: [
            DefaultTabController(
                length: 3,  
              child: TabBar(  
                
              tabs: [  
                // Tab(icon: Icon(Icons.contacts,color: Colors.black,), text: "Tab 1",),  
                // Tab(icon: Icon(Icons.camera_alt,color: Colors.black,), text: "Tab 2")  ,
                Tab(child: Text("Men",style: TextStyle(color: Colors.black,fontSize: 16),),) , 
                Tab(child: Text("Women",style: TextStyle(color: Colors.black,fontSize: 16),),) , 
                Tab(child: Text("Kids",style: TextStyle(color: Colors.black,fontSize: 16),),) , 
              ],  
                        ),
            ),  
            const TabBarView(  
              children: [  
             Text("dfjdf"),
             Text("dfjdf"),
             Text("dfjdf"),
              ],  
            ),
          ],
        ),  
      );  
    
  }  
}  
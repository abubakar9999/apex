

import 'package:apexproject/model/product_model.dart';
import 'package:apexproject/screen/product_details.dart';
import 'package:apexproject/screen/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10)
          ,
          child: Column(
            children: [
           Container(
            height: 200,

            
            
            child: TabBarScreen()),
              Row(
                children: const [
                  Expanded(
                    flex: 3,
                    
                    child: Text("Price Range From",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                  Expanded(
                    
                    flex: 1,
                    child: TextField()),
                  Expanded(  flex: 1,child: Text("To",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                  Expanded(  flex: 1,child: TextField())
                ],
              ),
              SizedBox(height: 16,),

              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                           
                                  decoration: InputDecoration(
                                    
                                  
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0,),
                                        borderSide: BorderSide(color: Colors.green,width: 2.0,style: BorderStyle.none)

                                        
                                       ),
                                    

                                      
                                    contentPadding: EdgeInsets.zero,
                                  
                                    hintText: '    Search by Name /SKU',
                                  
                                 
                                  ),
                                 
                                ),
                  ),


                 const Expanded( flex: 1,child: Icon(Icons.qr_code_scanner),)
                ],
              ),

             const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: productlist.length,
                  
                  itemBuilder: (context,index){
                  return  Card(
                    elevation: 2,
                    child: ListTile(
                    leading: GestureDetector(
                      onTap: (){
                        showDialog(context: context, builder: (context)=> AlertDialog(actions: [
                          Hero(tag: "hero", child: Image.network(productlist[index].img.toString(),
                        height: 300,width: 300,fit: BoxFit.cover,),)
                        ],) );
                      },
                      child: Hero(
                        tag: "hero",
                        child: Image.network(productlist[index].img.toString(),
                        height: 100,width: 80,fit: BoxFit.cover,),
                      ),
                    ),
                    title: Text(productlist[index].title.toString()),
                    subtitle: Text(productlist[index].subtile.toString()),
                    trailing: Text(productlist[index].price.toString()),
                  
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(productModel: productlist[index],)));
                    },
                             
                                  ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
    
  }
}
import 'package:apexproject/model/product_model.dart';
import 'package:flutter/material.dart';


class ProductDetails extends StatefulWidget {
  ProductModel? productModel;

  ProductDetails({Key? key, this.productModel}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var increment=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.productModel!.title.toString()),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              child: Image.network(
                widget.productModel!.img.toString(),
                height: 300,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
           const SizedBox(height: 20,),
            Text(widget.productModel!.title.toString(),style:const TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
           const SizedBox(height: 10,),
            

            Row(
              children: [
                Text(widget.productModel!.price.toString(),style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    const SizedBox(width: 10,),
                const Text("Color:",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                const SizedBox(width: 10,),
                Container(
                height: 15,
                width: 15,
                color: Colors.black,

                ),
                  const SizedBox(width: 20,),

                  const Text("Size:",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                const SizedBox(width: 10,),
                Container(
                height: 25,
                width: 25,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("39"),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),

                ),

                const SizedBox(width: 10,),
                Container(
                height: 25,
                width: 25,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("40"),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),

                ),
                const SizedBox(width: 10,),
                Container(
                height: 25,
                width: 25,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("41"),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),

                ),
                const SizedBox(width: 10,),
                Container(
                height: 25,
                width: 25,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("42"),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),

                ),







              ],
            ),

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text("Quantity:  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),




                   GestureDetector(
                    onTap: (){
                      _incerment();
                    },
                     child: Container(
                                   height: 25,
                                   width: 25,
                                   child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(child: Text("+")),
                                   ),
                                   decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                                   ),
                   
                                   ),
                   ),
                  const SizedBox(width: 10,),
                  Container(
                  height: 25,
                  width: 25,
                  child: Padding(
                    padding:  EdgeInsets.all(2.0),
                    child: Center(child: Text(increment.toString())),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
              
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      _decrement();
                    },
                    child: Container(
                    height: 25,
                    width: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(child: Text("-")),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                    ),
                  
                    ),
                  ),
              
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(child: MaterialButton(
                  color: Colors.grey,
                  child: Text("ADD TO BAG",style: const TextStyle(color: Colors.white),),
                  
                  onPressed: (){})),
         
             
                Expanded(child: MaterialButton(
                  color: Colors.black,
                  child: const Text("BUY NOW",style: TextStyle(color: Colors.white),),
                  
                  onPressed: (){})),
              ],
            ),
          



          ],
        ),
      ),
    );
  }

  _incerment(){
    setState(() {
     if(increment>=1){
       increment++;
     }
    });

  }
  _decrement(){
    setState(() {
     if(increment>1){
       increment--;
     }
    });

  }
}

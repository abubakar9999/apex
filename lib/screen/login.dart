import 'package:apexproject/screen/product_page.dart';

import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginState extends State<Login> {

  

final formkey = GlobalKey<FormState>();
  bool _isObscure = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registation form"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
        child: SingleChildScrollView
      
       (
          child: SafeArea(child: //Text Form Field *********************
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,


                    children: [

                      Image.asset("assets/login.png",height: 200,width: 200,fit: BoxFit.cover,),
                      SizedBox(height: 50,),


                      Form(
                          key: formkey,
                          child: Column(
                            children: [


                             
        
        
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon:
                                        Icon(Icons.call, color:Colors.black),
                                    hintText: 'Enter your Email',
                                    labelText: 'Email',
                                    labelStyle: TextStyle(color: Colors.black),
                                    
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Your phone number';
                                  }
                                  return null;
                                },
                              ),
        
                              SizedBox(height: 15),
        
                              TextFormField(
                                controller: passwordController,
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                        borderSide: BorderSide(
                                            color:Colors.black, width: 1.7)),
                                    contentPadding: EdgeInsets.zero,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                    ),
                                    prefixIcon:
                                        Icon(Icons.lock, color:Colors.black),
                                    hintText: 'Enter your password',
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.black),
                                    fillColor: Colors.grey,
                                    focusColor: Colors.grey),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Your Password';
                                  }
                                  return null;
                                },
                              ),
        
                           
        
                              //Sign Up **********  Button  *********
                              SizedBox(height: 45),
                              SizedBox(
                                  width: (MediaQuery.of(context).size.width) - 50,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                       
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32))),
                                      onPressed: () {
        
                                       formkey.currentState!.validate();
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductPage()));
                                  
                                      },
                                      child: Text(
                                        "Sign IN",
                                        style: TextStyle(
                                            fontSize: 17, fontWeight: FontWeight.bold),
                                      ))),
                            ],
                          )),
                    ],
                  ),
        
          
          ),
        ),
      ),
    

    );
    
    
  }
}
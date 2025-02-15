import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  void _validateForm() {
    if (formKey.currentState!.validate()) {
      // إذا كان الإدخال صحيحًا، نفذ تسجيل الدخول
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("تم تسجيل الدخول بنجاح")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        child: Form(
          key:formKey ,
          child: Container(
            width: double.infinity,
            height: 850,
            color: Colors.orange[100],
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Welcome To Shop',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Image(image: AssetImage('images/shopapp.jpg'), width: 150),
                SizedBox(height: 20.0),
                Container(
                  width: 300,
                  height: 126,
          
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(3, 3),
                      ),
                    ],
                    color: Colors.orange[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.orange),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.orange[100],
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.orange),
          
                          prefix: Icon(Icons.email_outlined, color: Colors.orange),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ), // حواف بلون أخضر عند عدم التحديد
                            borderRadius: BorderRadius.circular(10), // تدوير الحواف
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ), // حواف بلون أزرق عند التحديد
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "الرجاء إدخال البريد الإلكتروني";
                          }
                          if (!RegExp(
                            r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                          ).hasMatch(value)) {
                            return "البريد الإلكتروني غير صالح";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: isObscure,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.orange),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.orange[100],
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.orange),
          
                          prefix: Icon(Icons.lock, color: Colors.orange),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isObscure ? Icons.visibility : Icons.visibility_off,
                              color: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                          ),
          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ), // حواف بلون أخضر عند عدم التحديد
                            borderRadius: BorderRadius.circular(10), // تدوير الحواف
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ), // حواف بلون أزرق عند التحديد
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "الرجاء إدخال البريد الإلكتروني";
                          }
                          if (!RegExp(
                            r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                          ).hasMatch(value)) {
                            return "البريد الإلكتروني غير صالح";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget your password ?',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.orange,
                    backgroundColor: Colors.orange[200],
                    minimumSize: Size(200, 50), // عرض 200 وارتفاع 50
                  ),
                  
                  child: Text('LOGIN', style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold)),
                ),
                 SizedBox(height: 10),
                 ElevatedButton(
                  onPressed: () {
                   _validateForm;
                  },
                  
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.orange,
                    backgroundColor: Colors.orange,
                    minimumSize: Size(200, 50), // عرض 200 وارتفاع 50
                  ),
                  
                  child: Text('SIGN UP', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

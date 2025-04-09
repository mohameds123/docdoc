import 'package:alex9/core/colors_manager.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});
  TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120),
            Text("Create Account",style:
              TextStyle(
                color: ColorsManager.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),),
            SizedBox(height: 16,),
            Text("Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",style:
            TextStyle(
              color: ColorsManager.secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),),
            SizedBox(height: 16),
            //email
            TextFormField(
               controller: emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.fillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorsManager.borderColor, width: 1)
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: ColorsManager.hintColor ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            //phone
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.fillColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsManager.borderColor, width: 1)
                ),
                hintText: "Phone",
                hintStyle: TextStyle(
                  color: ColorsManager.hintColor ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            //gender
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.fillColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsManager.borderColor, width: 1)
                ),
                hintText: "gender",
                hintStyle: TextStyle(
                  color: ColorsManager.hintColor ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            //password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.fillColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsManager.borderColor, width: 1)
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: ColorsManager.hintColor ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            //confirm password
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.fillColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorsManager.borderColor, width: 1)
                ),
                hintText: "Confirm password",
                hintStyle: TextStyle(
                  color: ColorsManager.hintColor ,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 32),
            //create button
            InkWell(
              onTap:(){} ,
              child: Container(
                width: 400,
                height: 60,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorsManager.primaryColor,) ,
                child: Center(
                  child: Text("Create",style: TextStyle(
                    color: Colors.white,
                    fontSize:16 ,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Text("Or sign in with",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(245, 245, 245, 1),) ,
                      child: Center(
                        child: Image.asset("assets/images/Logo(1).png", width: 32,height:32 ,),
                      ),
                    ),

                    Container(
                      width: 60,
                      height: 60,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(245, 245, 245, 1),) ,
                      child: Center(
                        child: Image.asset("assets/images/Logo(1).png", width: 32,height:32 ,),


                      ),
                    ),

                    Container(
                      width: 60,
                      height: 60,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(245, 245, 245, 1),) ,
                      child: Center(
                        child: Image.asset("assets/images/Logo(1).png", width: 32,height:32 ,),


                      ),
                    ),
                  ],

                ),
              ),
            )
            

          ],
        ),
      ),
    );
  }
}

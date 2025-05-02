import 'package:alex9/core/colors_manager.dart';
import 'package:alex9/logic/login/cubit.dart';
import 'package:alex9/logic/login/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'doc_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Login is Successfully")));
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DocScreen()));
          } else if (state is LoginErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.em)));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: ColorsManager.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                      style: TextStyle(
                        color: ColorsManager.secondaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    //email
                    TextFormField(

                      controller: emailController,

                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorsManager.fillColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                                color: ColorsManager.borderColor, width: 1)),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: ColorsManager.hintColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12),

                    //password
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorsManager.fillColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                                color: ColorsManager.borderColor, width: 1)),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: ColorsManager.hintColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),



                    SizedBox(height: 32),
                    //Login button
                    InkWell(
                      onTap: () {
                        context.read<LoginCubit>().login(
                          emailController.text,

                          passController.text,
                        );
                      },
                      child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsManager.primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

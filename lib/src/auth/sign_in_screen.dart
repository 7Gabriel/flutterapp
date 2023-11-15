import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Expanded(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: "Doces",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "By Cris",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ]
                  )
                ),
                 DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                   child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText("Cupcakes"),
                      WavyAnimatedText("Brownies"),
                      TyperAnimatedText("Brigadeiros")
                  
                    ],
                                 ),
                 ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                      
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  const CustomTextField(
                    icon: Icons.email,
                    label: "Email",
                  ),

                  const CustomTextField(
                    icon: Icons.password,
                    label: "Senha",
                    isSecret: true,
                  ),

                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                        )
                      ),
                      onPressed: () {
                      
                    }, child: const Text("Entrar", 
                          style: TextStyle(fontSize: 18, fontFamily: "Helvetica"),),),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                      
                    }, child: const Text("Esqueci a senha", 
                      style: TextStyle(color: Colors.red),
                    )),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text("ou"),
                        ),
                         Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),

                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.lightBlue,
                      )
                    ),
                    onPressed: () {}, 
                    child: const Text("Criar conta")),
                )

                ],
              ),
              
          ))
      ]),
     
    );
  }
}
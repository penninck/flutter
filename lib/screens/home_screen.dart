import 'package:flutter/material.dart';
import 'training_screen.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3a57e8),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Trainer",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Color(0xffffd261),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "App",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Image.asset(
                            "assets/images/logo.png",
                            height: 100,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomButton(
                text: "Treinar",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TrainingScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Meu Perfil",
                onPressed: () {
                  // Navegar para tela de perfil
                },
                backgroundColor: Colors.transparent,
                borderColor: Colors.white,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
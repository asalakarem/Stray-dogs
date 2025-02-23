import 'package:flutter/material.dart';
import 'package:straydogs/screens/onboarding/adopting_dog_screen.dart';

class RescueScreen extends StatelessWidget {
  const RescueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3ED),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 120,
                  backgroundColor: Color(0xFF9B5832),
                ),
                const CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('images/8fc13774003173794d8c70562edcc21d.png'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Congratulations, Rescue Ranger!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF9B5832),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'You’ve taken your first step in saving a dog’s life!\n'
              'Now, just snap a photo of the dog, and we’ll handle the rest, getting them to the right place where they’ll be safe and cared for. Thank you for making a difference!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF9B5832),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AdoptingDogScreen()),
  );



                  
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 158, 177, 124), 
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

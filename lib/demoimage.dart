import 'package:flutter/material.dart';

class DemoImage extends StatefulWidget {
  const DemoImage({super.key});

  @override
  State<DemoImage> createState() => _DemoImageState();
}

class _DemoImageState extends State<DemoImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // optional to hide debug banner
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  "https://th.bing.com/th/id/OIP._7PixEFrD_qX95p_KeUr3wHaE8?w=243&h=180&c=7&r=0&o=7&pid=1.7&rm=3",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Product Card Views",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ), // <-- You missed a comma here
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i <= 5; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: const Color.fromARGB(255, 201, 170, 113),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("assets/facebook.png"),
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  "Image ${i + 1}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i <= 5; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: const Color.fromARGB(255, 108, 187, 72),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("assets/facebook.png"),
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  "Image ${i + 1}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

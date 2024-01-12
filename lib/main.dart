import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: const ContactCard(),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contact Card')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('android/Image/Profile.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 16),
            const Text(
              'Narendiran Sathuzan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Student'),
            const SizedBox(height: 16),
            const Text('+94-77-018-45-14'),
            const SizedBox(height: 8),
            const Text('n.sathuzan@gmail.com'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const SizedBox(
                    height: 30.0,
                    width: 30.0,
                    child: Image(
                      image: AssetImage('android/Image/LinkedIn.png'),
                    ),
                  ),
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/in/sathuzan';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  //color: Colors.blue,
                ),
                IconButton(
                  icon: const SizedBox(
                    height: 30.0,
                    child: Image(
                      image: AssetImage('android/Image/github.png'),
                    ),
                  ),
                  onPressed: () async {
                    const url = 'https://github.com/Sathuzan23';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  //color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

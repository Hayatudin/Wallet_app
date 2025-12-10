import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwiched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
              value: isSwiched,
              onChanged: (value) {
                setState(() {
                  isSwiched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              value: isSwiched,
              title: Text('Allow Notifications'),
              onChanged: (value) {
                setState(() {
                  isSwiched = value;
                });
              },
            ),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            GestureDetector(
              onTap: () {
                Text('Hello Guys');
              },
              child: Image.asset('assets/images/background.jpg'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[700]),
              child: Text('Subscibe', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

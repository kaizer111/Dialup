import 'package:dialup/Screens/Homescreen/card.dart';
import 'package:dialup/constants/color.dart';
import 'package:dialup/utils/device_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> items = [
    'Sale',
    'sale',
    'sale',
    'sale',
    'sale',
  ];
  List<Map<String, String>> gridItems = [
    {'title': 'Mechanic', 'image': 'assets/images/1.jpg'},
    {'title': 'Electrician', 'image': 'assets/images/2.jpg'},
    {'title': 'VAtinary Doctor', 'image': 'assets/images/3.jpg'},
    {'title': 'Mobile Repair', 'image': 'assets/images/4.jpg'},
    {'title': 'Plumber', 'image': 'assets/images/4.jpg'},
    {'title': 'Carpenter', 'image': 'assets/images/4.jpg'},
    {'title': 'medical', 'image': 'assets/images/4.jpg'},
    {'title': 'tailor', 'image': 'assets/images/4.jpg'},
    {'title': 'water', 'image': 'assets/images/4.jpg'},
    {'title': 'mistry', 'image': 'assets/images/4.jpg'},
    {'title': 'cooking food ', 'image': 'assets/images/4.jpg'},
    {'title': 'cleaning', 'image': 'assets/images/4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    String selectedCountry = 'Delhi';
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Dialup',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedCountry,
                    dropdownColor: Colors.black,
                    underline: const SizedBox(),
                    iconEnabledColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    items:
                        ['Delhi', 'Mumbai', 'Hyderabad', 'Banglore', 'jaipur']
                            .map((String value) => DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'I am looking for...',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: AppColor.primary,
        automaticallyImplyLeading: false,
        toolbarHeight: displayHeight(context) * 0.20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: displayHeight(context) * 0.20,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: FlutterCarousel.builder(
                itemCount: items.length,
                options: FlutterCarouselOptions(
                  height: 180,
                  enableInfiniteScroll: true,
                  showIndicator: false,
                  viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                  shrinkWrap: true,
                    itemCount: gridItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 3 / 4,
                    ),
                  itemBuilder: (context, index) {
                    return CustomGridCard(
                      title: gridItems[index]['title']!,
                      assetPath: gridItems[index]['image']!,
                      onTap: () {
                        print('Tapped on ${gridItems[index]['title']}');
                      },
                    );
                  },),
          ),
        ],
      ),
    );
  }
}

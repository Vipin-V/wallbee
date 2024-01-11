import 'package:flutter/material.dart';
import 'package:wallbee/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff5f8fd),
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                  hintText: "search wallpapers", border: InputBorder.none),
            )),
            InkWell(
                onTap: () {
                  if (searchController.text != "") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchView(
                                  search: searchController.text,
                                )));
                  }
                },
                child: Container(child: const Icon(Icons.search)))
          ],
        ),
      ),
    );
  }
}

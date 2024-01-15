import 'package:flutter/material.dart';
import 'package:wallbee/data/data.dart';
import 'package:wallbee/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategorieModel> categories = new List();
  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xfff5f8fd),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: const Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "search wallpaper", border: InputBorder.none),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          )
          ListView.builder(itemCount: categories.length,shrinkWrap: true, itemBuilder:(context,index) {
            return CategoriesTile(
              title: categories[index].categorieName,
              imgUrl: categories[index].imgUrl,
            );
          })
        ]),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  final imgUrl, title;
  CategoriesTile({@required this.title,@required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          child: Image.network(imgUrl),
        ),
        Container(
          child: Text(title),
        )
      ]),
    );
  }
}

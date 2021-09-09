import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchFeature extends StatefulWidget {
  const SearchFeature({Key key}) : super(key: key);

  @override
  _SearchFeatureState createState() => _SearchFeatureState();
}

class _SearchFeatureState extends State<SearchFeature> {
  List<String> keywords = [];
  TextEditingController searchController = TextEditingController();
  int count = 0;

  void addKeyword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (count != 9) {
        keywords.add(value);
        count++;
      }
      searchController.text = "";
    });
    prefs.setStringList('keywords', keywords);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: searchController,
              onSubmitted: (value) {
                addKeyword(value);
              },
              textInputAction: TextInputAction.search,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      keywords[index],
                    ),
                  );
                },
                itemCount: keywords.length,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

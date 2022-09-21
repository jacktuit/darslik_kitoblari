import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'clip_path.dart';

class SearchFieldOne extends StatefulWidget {
  const SearchFieldOne({Key? key}) : super(key: key);

  @override
  State<SearchFieldOne> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchFieldOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Selected',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

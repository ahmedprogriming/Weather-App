import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
 appBar: AppBar
 (
 iconTheme: IconThemeData(color: Colors.white),
  backgroundColor: Color(0xffFFAD3B),
  title: Text("Search a City",style: TextStyle(color: Colors.white),),
 ),
    );
  }
}
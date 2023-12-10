import "package:flutter/material.dart";
import "package:my_app/constants/colors.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        drawer: const Drawer(child: Text("Yo")),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
          children: [
            _searchBox(),
            Expanded(
                child: ListView(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 50),
                    child: const Text(
                      "All Todos",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ))
              ],
            ))
          ],
        )));
  }

  Container _searchBox() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: "Search",
                  hintStyle: TextStyle(color: tdGrey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: tdBlack,
                    size: 20,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: 15, minWidth: 25),
                  border: InputBorder.none),
            ),
          )
        ]));
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Center(
              child: SizedBox(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/image.jpeg')))),
        ),
      ],
      backgroundColor: tdBGColor,
    );
  }
}

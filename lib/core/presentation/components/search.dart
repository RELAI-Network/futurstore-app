import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 2)],
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          const Flexible(
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: 'Search for apps & games',
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              maxRadius: 17,
              backgroundColor: Colors.cyan,
              child: Text('R'),
            ),
          ),
        ],
      ),
    );
  }
}

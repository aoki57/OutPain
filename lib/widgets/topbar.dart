import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                prefixIcon: Icon(Icons.search_rounded),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(32),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(32),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   child: Icon(Icons.notifications),
          // ),
          // SizedBox(
          //   width: 10,
          // ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   child: Icon(Icons.person),
          // ),
        ],
      ),
    );
  }
}

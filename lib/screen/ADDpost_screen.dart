// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreen();
}

class _AddPostScreen extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.upload),
        ),
        title: Text("Post to"),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Post",
              style: TextStyle(
                color: blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1680605255636-8a5b0fa8b06e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1376&q=80"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'write a caption...',
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

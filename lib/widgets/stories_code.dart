import 'dart:math';

import 'package:flutter/material.dart';

List imgList = [
  NetworkImage(
      'https://images.unsplash.com/photo-1680669116394-13028a91533f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  NetworkImage(
      'https://images.unsplash.com/photo-1680669158867-cc840299ec33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  NetworkImage(
      'https://images.unsplash.com/photo-1680466257600-86e0aa02cc64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
];

void AddRandomImage() {
  var RandImgIndex = Random().nextInt(3);

  // if index is 0 we will pick image at index 0
  if (RandImgIndex == 0) {
    imgList.add(
      NetworkImage(
          'https://images.unsplash.com/photo-1680669116394-13028a91533f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
    );
    // if index is 1 we will pick image at index 1
  } else if (RandImgIndex == 1) {
    imgList.add(
      NetworkImage(
          'https://images.unsplash.com/photo-1680669158867-cc840299ec33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
    );
  } else {
    // if index is 2 we will pick image at index 2
    imgList.add(
      NetworkImage(
          'https://images.unsplash.com/photo-1680466257600-86e0aa02cc64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
    );
  }
}

class bubbleStories extends StatelessWidget {
  const bubbleStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1680669116394-13028a91533f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1680669158867-cc840299ec33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1680466257600-86e0aa02cc64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

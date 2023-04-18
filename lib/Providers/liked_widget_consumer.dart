import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_item.dart';

class liked_provider_widget extends StatelessWidget {
  liked_provider_widget({
    super.key,
    required int index,
  });
  var index = 0;

  @override
  Widget build(BuildContext context) {
    final providerfav = Provider.of<favItem>(context, listen: false);

    List<int> selecteditem = [];
    return Consumer<favItem>(builder: (context, value, child) {
      return IconButton(
        onPressed: () {
          if (value.selectedItem.contains(index)) {
            value.cutItem(index);
          } else {
            value.addItem(index);
          }
        },
        icon: Icon(
          value.selectedItem.contains(index)
              ? Icons.favorite
              : Icons.favorite_border_outlined,
          color: Colors.red,
        ),
      );
    });
  }
}

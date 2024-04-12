import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MycurrentLocation extends StatelessWidget {
  const MycurrentLocation({Key? key}) : super(key: key);

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Your Location"),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Search Address ...",
          ),
        ),
        actions: [
          Row(
            children: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "345 Kerala",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.location_on), // Example icon for demonstration
              ],
            ),
          ),
        ],
      ),
    );
  }
}

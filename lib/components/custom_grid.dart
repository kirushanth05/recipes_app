import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({
    super.key,
    this.crossAxisCount = 2,
    required this.child,
    required this.items,
  });

  final int crossAxisCount;
  final Widget Function(dynamic item) child;
  final List items;

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? const Center(
            child: Text('No items found!'),
          )
        : Expanded(
            child: GridView(
              // padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
              ),
              children: items
                  .map(
                    (item) => child(item),
                  )
                  .toList(),
            ),
          );
  }
}
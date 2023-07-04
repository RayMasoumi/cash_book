import 'package:cash_book/widgets/left_icon_list_tile_widget.dart';
import 'package:flutter/material.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return LeftIconListTileWidget(
              lastModified: 'yesterday',
              title: 'Business',
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}

/**
 * * The problem with overlapping widgets happened because they kept rebuilding
 * ! this is a hack not a solution and it is NOT optimized
 * $child: SingleChildScrollView(
 * $  child: Column(
 * $    children: [for (int i = 0; i < 6; i++) CardListViewWidget()],
 * $      ),
 * $  ),
 */

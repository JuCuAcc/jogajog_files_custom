/*
import 'package:flutter/material.dart';

class MultipleOperations extends StatefulWidget {

  @override
  State<MultipleOperations> createState() => _MultipleOperationsState();
}

class _MultipleOperationsState extends State<MultipleOperations> {
  @override
  Widget build(BuildContext context) {
    return Container(
        MultipleSearchSelection(
          items: countries, // List<String>
          fuzzySearch: FuzzySearch.jaro,
          padding: const EdgeInsets.all(20),
          title: Text(
            'Countries',
            style: kStyleDefault.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          titlePadding: const EdgeInsets.symmetric(vertical: 10),
          searchItemTextContentPadding:
          const EdgeInsets.symmetric(horizontal: 10),
          maximumShowItemsHeight: 200,
          hintText: 'Type here to search',
          hintTextStyle: kStyleDefault.copyWith(
            fontSize: 13,
            color: Colors.grey[400],
          ),
          selectAllTextStyle: kStyleDefault,
          selectAllBackgroundColor: Colors.white,
          selectAllOnHoverBackgroundColor: Colors.blue[300],
          selectAllOnHoverTextColor: Colors.white,
          selectAllOnHoverFontWeight: FontWeight.bold,
          clearAllTextStyle: kStyleDefault.copyWith(
            color: Colors.red,
          ),
          clearAllOnHoverFontWeight: FontWeight.bold,
          clearAllOnHoverBackgroundColor: Colors.white,
          pickedItemTextStyle: kStyleDefault.copyWith(
            fontSize: 13,
          ),
          pickedItemBackgroundColor: Colors.grey[300]!.withOpacity(0.5),
          pickedItemBorderRadius: 6,
          pickedItemTextColor: Colors.black,
          showedItemTextStyle: kStyleDefault.copyWith(
            fontWeight: FontWeight.w500,
          ),
          showedItemsBackgroundColor: Colors.grey.withOpacity(0.1),
          showShowedItemsScrollbar: false,
          searchItemTextStyle: kStyleDefault,
          noResultsWidget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'No items found',
              style: kStyleDefault.copyWith(
                color: Colors.grey[400],
                fontSize: 13,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          onTapShowedItem: () {},
          onPickedChange: (items) {},
          onItemAdded: (item) {
            print('$item added to picked items');
          },
          onItemRemoved: (item) {
            print('$item removed from picked items');
          },
        )
    );
  }
}

*/

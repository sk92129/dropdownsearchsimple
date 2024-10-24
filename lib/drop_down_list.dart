

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'dropdown_item_model.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({super.key, required this.items, required this.onChanged});


    final DropdownSearchOnFind<DropdownItemModel> items;
      final ValueChanged<DropdownItemModel?> onChanged;


  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    
    return Expanded(child:     DropdownSearch<DropdownItemModel>(
            items: (f, cs) => widget.items(f, cs),


            onChanged: (obj) =>  widget.onChanged(obj),


            suffixProps: const DropdownSuffixProps(
                clearButtonProps: ClearButtonProps(isVisible: true)),
            compareFn: (item, selectedItem) =>
                item.id == selectedItem.id,
            dropdownBuilder: (context, selectedItem) {
              if (selectedItem == null) {
                return const SizedBox.shrink();
              }

              return ListTile(
                contentPadding: const EdgeInsets.only(left: 0),
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(selectedItem.name[0])),
                title: Text(selectedItem.name),
              );
            },
            popupProps: PopupProps.menu(
              disableFilter:
                  true, //data will be filtered by the backend
              showSearchBox: true,
              showSelectedItems: true,
              itemBuilder: (ctx, item, isDisabled, isSelected) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(item.name[0])),
                  selected: isSelected,
                  title: Text(item.name),
                );
              },
            ),
          ));

  }
  


}
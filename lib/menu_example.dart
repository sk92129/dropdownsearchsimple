import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'getdata.dart';
import 'user_model.dart';

class MenuExamplesPage extends StatefulWidget {
  const MenuExamplesPage({super.key});

  @override
  State<MenuExamplesPage> createState() => _MenuExamplesPageState();
}

class _MenuExamplesPageState extends State<MenuExamplesPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropdownSearch Menu Demo")),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.all(4),
            children: <Widget>[

              const Padding(padding: EdgeInsets.all(8)),
              const Text("[example for async items]"),
              Row(
                children: [
                  Expanded(
                    child: DropdownSearch<UserModel>(
                      items: (f, cs) => getData(f),
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
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                ],
              ),
              const Padding(padding: EdgeInsets.all(32)),
              const Text("text example"),

              const Text("text example"),
          
              
              
              const Padding(padding: EdgeInsets.only(top: 32)),
            ],
          ),
        ),
      ),
    );
  }
}

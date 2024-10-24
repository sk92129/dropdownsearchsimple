import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'drop_down_list.dart';
import 'get_data.dart';
import 'dropdown_item_model.dart';

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
                  DropDownList(
                    items: (filter, cs) async {
                      return await getDataStatic(filter);
                    },
                    onChanged: (obj) {
                      print(obj);
                    },
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

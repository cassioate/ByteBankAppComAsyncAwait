import 'package:bytebank/Model/Contact.dart';
import 'package:bytebank/Widgets/ContactsList/ContactItem.dart';
import 'package:bytebank/database/app_database.dart';
import 'package:flutter/material.dart';

class ContactsListFutureBuilder extends StatelessWidget {
  List<Contact>? contacts = [];

  contactItemBuilder(context, index) {
    final Contact? contact = contacts?[index];
    return ContactItem(contact);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Contact>>(
      future: findAll(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            break;
          case ConnectionState.waiting:
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text('Loading'),
                ],
              ),
            );
          case ConnectionState.active:
            break;
          case ConnectionState.done:
            contacts = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) =>
                  contactItemBuilder(context, index),
              itemCount: contacts?.length ?? 0,
            );
        }
        return Text('Error no switch do FutureBuilder em ContactList.dart');
      },
    );
  }
}

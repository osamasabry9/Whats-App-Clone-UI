import 'package:flutter/material.dart';
import 'package:whats_app_clone/config/colors.dart';
import 'package:whats_app_clone/config/info.dart';
import 'package:whats_app_clone/views/pages/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (MediaQuery.of(context).size.width < 800) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MobileChatScreen(index: index),
                  ),
                );
                indexChat = index;
              } else {
                indexChat = index;
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  radius: 30,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Divider(color: dividerColor, indent: 85),
      ),
    );
  }
}

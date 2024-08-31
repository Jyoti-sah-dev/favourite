import 'package:favourite/screens/provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favortie_screen.dart';


class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueGrey[100],
          title: Text('Users Data'),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoriteUsersScreen()),
                );
              },
            ),
          ],
        ),
        // backgroundColor: Colors.blueGrey,
        body: Consumer<UserProvider>(
            builder: (context, provider, child) {
              if (provider.users.isEmpty) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: provider.users.length,
                  itemBuilder: (context, index) {
                    final user = provider.users[index];
                    final isFavorite = provider.isFavorite(user);
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.blueGrey[100],
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar),
                        ),
                        title: Text('${user.firstName} ${user.lastName}'),
                        subtitle: Text(user.email),
                        trailing: IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : null,
                          ),
                          onPressed: () => provider.toggleFavorite(user),
                        ),
                      ),
                    );
                  },
                );
              }
            },
            ),
        );
  }
}

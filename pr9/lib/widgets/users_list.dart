import 'package:flutter/material.dart';
import 'package:part_9/models/User.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

List<User> usersList = [
  User(
      age: 19,
      firstName: 'Валодя',
      lastName: 'Буторин',
      phone: '88996542222',
      email: 'example@mail.ru',
      avatar:
          'https://memepedia.ru/wp-content/uploads/2022/10/memy-pro-dub-768x512.jpg'),
  User(
      age: 15,
      firstName: 'Валодя',
      lastName: 'Буторин',
      phone: '88996542222',
      email: 'example@mail.ru',
      avatar:
          'https://wanderings.online/wp-content/uploads/2017/08/1187239889_05.jpg'),
  User(
      age: 13,
      firstName: 'Валодя',
      lastName: 'Буторин',
      phone: '88996542222',
      email: 'example@mail.ru',
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Barack_Obama_at_NH.jpg/220px-Barack_Obama_at_NH.jpg'),
];

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: usersList[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: usersList[index].avatar == ''
                            ? Image.network(
                                'http://cdn.onlinewebfonts.com/svg/img_207975.png')
                            : Image.network(usersList[index].avatar,
                                fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Имя: ' + usersList[index].firstName,
                              textAlign: TextAlign.left,
                            ),
                            Text('Фамилия: ' + usersList[index].lastName),
                            Text('Возраст: ' + usersList[index].age.toString()),
                            Text('Телефон: ' + usersList[index].phone),
                            Text('Email: ' + usersList[index].email),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

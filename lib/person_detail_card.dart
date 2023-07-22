import 'package:feed/people_model.dart';
import 'package:flutter/material.dart';

class PersonDetailCard extends StatelessWidget {
  final Person person;

  const PersonDetailCard({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // CircleAvatar(
            //   backgroundImage: AssetImage(person.image ?? 'img/pic-6'),
            //   radius: 40.0,
            // )
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                    color: Colors.black,
                  ),
                  image: DecorationImage(
                    image: AssetImage(person.image ?? 'img/pic-6'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

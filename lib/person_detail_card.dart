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
      child: ListTile(
          tileColor: Colors.white,
          dense: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(person.image ?? 'img/pic-6'),
          ),
          title: Text(person.name ?? ''),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${person.job}'),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.access_time_outlined,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('${person.clock}'),
                ],
              )
            ],
          ),
          trailing: const Icon(Icons.more_vert)),
    );
  }
}

import 'package:feed/people_model.dart';
import 'package:feed/person_detail_card.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Person> persons = [
    Person(
        name: 'Bill Will',
        image: 'img/pic-1.jpg',
        job: 'Software Developer',
        clock: '3:40'),
    Person(
        name: 'Andy Smith',
        image: 'img/pic-2.jpg',
        job: 'UI Designer',
        clock: '5:50'),
    Person(
        name: 'John Smith',
        image: 'img/pic-3.jpg',
        job: 'Software Tester',
        clock: '9:50'),
    Person(
        name: 'Julie Robert',
        image: 'img/pic-4.jpg',
        job: 'Software Tester',
        clock: '9:20'),
    Person(
        name: 'Cloe Sugar',
        image: 'img/pic-5.jpg',
        job: 'Software Tester',
        clock: '10:40'),
    Person(
        name: 'Colie Story',
        image: 'img/pic-6.jpg',
        job: 'Software Tester',
        clock: '4:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 36,
          color: Colors.black,
        ),
        backgroundColor: const Color(0xFFf7be7c),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.format_align_center_outlined),
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
          child: SingleChildScrollView(
            child: Column(
              children: persons.map((person) {
                return PersonDetailCard(person: person);
              }).toList(),
            ),
          )),
    );
  }
}

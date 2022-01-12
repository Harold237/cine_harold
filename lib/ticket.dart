import 'package:flutter/material.dart';
import 'package:cine_harold/data.dart';
class ticket extends StatefulWidget {
  const ticket({Key? key}) : super(key: key);

  @override
  _ticketState createState() => _ticketState();
}

class _ticketState extends State<ticket>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(tabController: tabController),
          const Myhead(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView.builder(
                itemCount: tickets.length,
                itemBuilder: (BuildContext context, int index) {
                  final Ticket ticket = tickets[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    height: MediaQuery.of(context).size.height * .18,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffb40505),
                          Color(0xffe70606),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ListItemContainer( ticket: ticket),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ListItemContainer extends StatelessWidget {
  const ListItemContainer({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 10.0,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Image.network(ticket.asset,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(ticket.name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const InfoItem(),
                        const InfoItem2(),
                      ],
                    ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  const InfoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: const [
           Text(
             '03/11/2021',
             style: TextStyle(
               color: Colors.white,
               fontSize: 8,
             ),
           ),
           Text(
             '16:00',
             style: TextStyle(
               color: Colors.white,
               fontSize: 10,
             ),
           ),
         ],
       ),
    );
  }
}

class InfoItem2 extends StatelessWidget {
  const InfoItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const  [
        Text(
          'Cinéma Pathé Le Mans',
          style: TextStyle(
            color: Colors.white,
            fontSize: 8,
          ),
        ),
       // Spacer(),
        Text(
          'Salle 15',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
       // Spacer(flex: 2),
        Text(
          'VF',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.title,
    required this.active,
  }) : super(key: key);

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Transform(
        transform: Matrix4.identity()..scale(active ? 1.5 : 1.0),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffb40505),
            Color(0xffe70606),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const Center(
              child: Icon(Icons.local_movies_outlined, size: 40,),
            )
          ],
        ),
      ),
    );
  }
}
class Myhead extends StatelessWidget{
  const Myhead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(10.0),
      child: Text('Tickets',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}

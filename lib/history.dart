import 'package:flutter/material.dart';
import 'package:cine_harold/data.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history>
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
  List<Film>films= Utils.getFilms();
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
            child: ListView.builder(
              itemCount: films.length,
              itemBuilder: (BuildContext ctx, int index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(

                      child: ListTile(
                        onTap: (){
                          debugPrint('Card tapped.');
                        },
                        title: Text(films[index].name, textAlign: TextAlign.center),
                        leading: Image.network(films[index].asset,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,),
                        trailing: const Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
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
      child: Text('History',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}


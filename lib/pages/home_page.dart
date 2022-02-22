// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lightning_app/pages/details.dart';

import '../widgets/user_images.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
 
  late TabController tabController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4 , vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Material(
        color: Colors.white,
        child: TabBar(indicatorColor: Colors.yellow,controller: tabController ,tabs: [
          const Tab(icon: Icon(Icons.home,color: Colors.black,size: 30,),),
          const Tab(icon: Icon(Icons.search,color: Colors.black,size: 30,),),
          const Tab(icon: Icon(Icons.photo,color: Colors.black,size: 30,),),
          const Tab(icon: Icon(Icons.account_box,color: Colors.black,size: 30,),),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Lightning',
          style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            //color: Colors.blue.shade300,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                userImages('assets/profil_pictures/barbarapp.jpg',
                    'assets/emoji/barbaraemoji.png'),
                const SizedBox(
                  width: 15,
                ),
                userImages('assets/profil_pictures/kivancpp.jpg',
                    'assets/emoji/kivancemoji.png'),
                const SizedBox(
                  width: 15,
                ),
                userImages('assets/profil_pictures/danlapp.jpg',
                    'assets/emoji/danlameoji.png'),
                const SizedBox(
                  width: 15,
                ),
                userImages('assets/profil_pictures/tompp.jpg',
                    'assets/emoji/tomemoji.png'),
                const SizedBox(
                  width: 15,
                ),
                userImages('assets/profil_pictures/serenaypp.jpg',
                    'assets/emoji/serenayemoji.png'),
                const SizedBox(
                  width: 15,
                ),
                userImages('assets/profil_pictures/tylerdurdenpp.jpg',
                    'assets/emoji/tyleremoji.png'),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/profil_pictures/barbarapp.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Barbara Palvin',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  '@realbarbarapalvin',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '5 mins ago',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                )
                              ]),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'I am happy to be on the cover of @bazaar magazine this year. I kiss you all 💋💋.',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/barbara1.jpg'),),);
                          },
                          child: Hero(
                            tag:'assets/post_pictures/barbara1.jpg' ,
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/post_pictures/barbara1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/barbara2.jpg'),),);
                          },
                              child: Hero(
                                tag: 'assets/post_pictures/barbara2.jpg',
                                child: Container(
                                  height: 90,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/post_pictures/barbara2.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                               onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/barbara3.jpg'),),);
                          },
                              child: Hero(
                                tag: 'assets/post_pictures/barbara3.jpg',
                                child: Container(
                                  height: 100,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/post_pictures/barbara3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26),
                          child: const Center(
                              child: Text(
                            '#HarpersBazaar',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26),
                          child: const Center(
                            child: Text(
                              '#Magazine',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1.5k',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.black.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1100',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 105,),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '25.5k',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/profil_pictures/tylerdurdenpp.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Tyler Durden',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  '@tylerdurden',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '15 mins ago',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                )
                              ]),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'The first rule of Fight Club is: you do not talk about Fight Club.',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/fightclub1.jpg'),),);
                          },
                          child: Hero(
                            tag:'assets/post_pictures/fightclub1.jpg' ,
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/post_pictures/fightclub1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/fightclub2.jpg'),),);
                          },
                              child: Hero(
                                tag: 'assets/post_pictures/fightclub2.jpg',
                                child: Container(
                                  height: 90,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/post_pictures/fightclub2.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                               onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Details(imgPath: 'assets/post_pictures/fightclub3.jpg'),),);
                          },
                              child: Hero(
                                tag: 'assets/post_pictures/fightclub3.jpg',
                                child: Container(
                                  height: 100,
                                  width:
                                      (MediaQuery.of(context).size.width - 100) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/post_pictures/fightclub3.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26),
                          child: const Center(
                              child: Text(
                            '#TylerDurden',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26),
                          child: const Center(
                            child: Text(
                              '#FightClub',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1.1k',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.black.withOpacity(0.4),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '775',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 105,),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '14.4k',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

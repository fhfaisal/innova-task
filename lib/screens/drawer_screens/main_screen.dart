import 'package:flutter/material.dart';
import 'package:koli_store/color_collections.dart';
import 'package:koli_store/screens/details_screen.dart';
import 'package:koli_store/screens/drawer_screens/drawer_controller/LeadingWidget.dart';
import 'package:koli_store/screens/model/model_class.dart';
import 'package:koli_store/screens/navigationbar/navigation.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool showName = false;
  int? selectedIndex;

  void toggleNameVisibility() {
    setState(() {
      showName = !showName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingWidget(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: textWhite, borderRadius: BorderRadius.circular(50)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Badge(
                  child: Icon(Icons.shopping_cart_outlined, size: 20),
                ),
              ),
            ),
          )
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Store Location',
              style: appbarStyle1(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.place,
                  color: Colors.deepOrange,
                  size: 20,
                ),
                Text(
                  'Mondolibug, Sylhet',
                  style: appbarStyle2(),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Expanded(
                    child: TextField(
                  style: TextStyle(),
                  onTapOutside: (event) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: textWhite,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.all(14),
                    hintText: 'Looking for shoes',
                    hintStyle: regularStyle(),
                    prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Icon(Icons.search_outlined)),
                  ),
                )),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: GridView.builder(
                  itemCount: brand.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 5,
                  ),
                  itemBuilder: (context, index) {
                    bool isNameVisible = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = isNameVisible ? null : index;
                        });
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Image.network('${brand[index].logo}'),
                            ),
                          ),
                          if (isNameVisible)
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                '${brand[index].name}',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: categoryStyle(),
                  ),
                  TextButton(onPressed: () {}, child: Text('See All')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              PopulerShoes(context),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: categoryStyle(),
                  ),
                  TextButton(onPressed: () {}, child: Text('See All')),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              NewArrivals(context)
            ],
          ),
        ),
      ),
    );
  }

  Container NewArrivals(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height * .15,
        child: ListView.separated(
          itemCount: myShoe.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.sizeOf(context).width * .90,
                decoration: BoxDecoration(
                    color: textWhite,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              myShoe[index].bestChoice.toUpperCase(),
                              style:
                                  myFontStyle(14, FontWeight.bold, Colors.cyan),
                            ),
                            Text(
                              myShoe[index].brandName,
                              style: myFontStyle(
                                22,
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          width: MediaQuery.sizeOf(context).width * .40,
                          height: MediaQuery.sizeOf(context).height * .15,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Image.network(myShoe[index].image)),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
        ));
  }

  Container PopulerShoes(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height * .25,
        child: ListView.separated(
          itemCount: myShoe.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsScreen(details: myShoe[index]),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: textWhite,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * .40,
                        height: MediaQuery.sizeOf(context).height * .12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Image.network(myShoe[index].image)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        myShoe[index].bestSeller.toUpperCase(),
                        style: myFontStyle(14, FontWeight.bold, Colors.cyan),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        myShoe[index].brandName,
                        style: boldStyle(),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '\$ ${myShoe[index].price}',
                            style: boldStyle(),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * .06,
                        ),
                        InkWell(
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * .05,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20))),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
        ));
  }
}

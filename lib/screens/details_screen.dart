import 'package:flutter/material.dart';
import 'package:koli_store/color_collections.dart';
import 'package:koli_store/screens/model/model_class.dart';
class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, required this.details}) : super(key: key);

  final BestSeller details;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Man's Shoes"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios, size: 20),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart_outlined, size: 20),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Image.network('${widget.details.image}'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.details.bestSeller}'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          '${widget.details.brandName}',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$${widget.details.price}',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.details.description}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                          maxLines: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Gallery',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: ListView.separated(
                            itemCount: widget.details.gallery.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                      '${widget.details.gallery[index]}'),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 5,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Size',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: TabBar(
                                  controller: _tabController,
                                  tabs: [
                                    Tab(text: 'US'),
                                    Tab(text: 'UK'),
                                    Tab(text: 'EU'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60, // Adjust the height as needed
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              ShoeSizeTab(selectedShoe: widget.details, variant: 'US'),
                              ShoeSizeTab(selectedShoe: widget.details, variant: 'UK'),
                              ShoeSizeTab(selectedShoe: widget.details, variant: 'EU'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height*.12,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: scaffoldBgClr.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$${widget.details.price}',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Container(
                              height: 70,
                              width: MediaQuery.sizeOf(context).width*.5,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                              child: Center(child: Text('Add To Card',style: myFontStyle(20,FontWeight.w600,textWhite),)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoeSizeTab extends StatefulWidget {
  final BestSeller selectedShoe;
  final String variant;

  ShoeSizeTab({required this.selectedShoe, required this.variant});

  @override
  _ShoeSizeTabState createState() => _ShoeSizeTabState();
}

class _ShoeSizeTabState extends State<ShoeSizeTab> {
  String selectedSize = ''; // Track the selected size

  @override
  Widget build(BuildContext context) {
    Map<String, double> sizes = widget.selectedShoe.getSize(widget.variant);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: sizes.entries.map((entry) {
        bool isSelected = entry.key == selectedSize;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedSize = isSelected ? '' : entry.key;
            });
          },
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : scaffoldBgClr ,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              '${entry.key}',
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

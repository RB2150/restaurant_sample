import 'package:flutter/material.dart';
import 'package:sample/models/category.dart';
import 'package:sample/widgets/categoryWidget.dart';

import '../demoData.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexOfType = 0;
  int selectedTabIndex = 0;
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedTabIndex,
        onTap: (value) {
          setState(() {
            selectedTabIndex = value;
          });
        },
      ),
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                      children: types
                          .map(
                            (e) => Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndexOfType = types.indexOf(e);
                                  });
                                },
                                child: Container(
                                  color: selectedIndexOfType == types.indexOf(e)
                                      ? Colors.amber
                                      : Colors.transparent,
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                        color: selectedIndexOfType ==
                                                types.indexOf(e)
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList()),
                ),
                SizedBox(
                  height: 30,
                ),
                CategoryWidget(
                  categories: categories,
                  onTap: (index) {
                    print(index);
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Category: ${categories[selectedCategoryIndex].categoryName}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 26,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                GridView(
                  children: foodItems
                      .map((e) => Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.width * 0.15,
                                  backgroundImage: AssetImage(e.imageUrl),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    e.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '₹${e.price}.00',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            backgroundColor: Colors.amber,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18),
                                          ),
                                          child: Text(
                                            '  ADD  ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 250,
                  ),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

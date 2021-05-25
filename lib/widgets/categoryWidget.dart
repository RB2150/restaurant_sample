import 'package:flutter/material.dart';
import 'package:sample/models/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key key, this.categories, this.onTap})
      : super(key: key);
  final List<Category> categories;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What are you Looking for?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                onTap(index);
              },
              child: Container(
                height: 120,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        categories[index].imageUrl,
                      ),
                      radius: 32,
                    ),
                    Text(
                      categories[index].categoryName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            itemCount: categories.length,
            padding: const EdgeInsets.only(right: 15),
            physics: BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

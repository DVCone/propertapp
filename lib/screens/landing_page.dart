import 'package:flutter/material.dart';
import 'package:propertapp/custom/border_box.dart';
import 'package:propertapp/custom/option_button.dart';
import 'package:propertapp/sample_data.dart';
import 'package:propertapp/utils/constants.dart';
import 'package:propertapp/utils/custom_functions.dart';
import 'package:propertapp/utils/widget_functions.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  addVerticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    // Navbar
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BorderBox(
                          child: Icon(
                            Icons.menu,
                            color: colorBlack,
                          ),
                          height: 50,
                          widht: 50,
                        ),
                        BorderBox(
                          child: Icon(
                            Icons.settings,
                            color: colorBlack,
                          ),
                          height: 50,
                          widht: 50,
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding),
                  // Title
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "New York",
                      style: themeData.textTheme.headline1,
                    ),
                  ),
                  const Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: 25,
                      color: colorGrey,
                    ),
                  ),
                  addVerticalSpace(10),
                  // filter horizontal scroll
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        "<\$250,000",
                        "For Sale",
                        "3-4 Beds",
                        ">1000 sqft"
                      ].map((filter) => ChoiceOption(text: filter)).toList(),
                    ),
                  ),
                  addVerticalSpace(10),
                  // Body
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: reData.length,
                          itemBuilder: (context, index) {
                            return RealEstateItem(itemData: reData[index]);
                          }),
                    ),
                  ),
                ],
              ),
              // Map Button
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    icon: Icons.map_rounded,
                    text: "Map View",
                    width: size.width * 0.35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Choice Filter from sample_data.dart
class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colorGrey.withAlpha(25)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

// Data List fro sample_data.dart
class RealEstateItem extends StatelessWidget {
  const RealEstateItem({Key? key, required this.itemData}) : super(key: key);
  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(itemData["image"]),
              ),
              const Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  widht: 50,
                  height: 50,
                  child: Icon(
                    Icons.favorite_border,
                    color: colorBlack,
                  ),
                ),
              ),
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(
                formatCurrency(itemData["amount"]),
                style: themeData.textTheme.headline1,
              ),
              addHorizontalSpace(10),
              Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2,
              )
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
            style: themeData.textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}

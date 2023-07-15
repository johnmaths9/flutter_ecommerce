import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String? title;
  final String searchBarTitle;
  bool? isSearch;
  TopContainer(
      {super.key,
      this.title,
      required this.searchBarTitle,
      this.isSearch = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            title != null
                ? Container(
                    alignment: Alignment.center,
                    height: 65,
                    child: Text(
                      title!,
                      style: kNormalStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                  )
                : Image.asset(
                    "assets/logo1.png",
                    fit: BoxFit.cover,
                    width: 170,
                    height: 65,
                  ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: kGreyColor.withOpacity(0.8)),
              child: Stack(
                children: [
                  const Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.black87,
                    size: 20,
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl:
                    'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=1024x1024&w=is&k=20&c=iX0adGZVKv9wS5yrs0-hpFsJBnRAacZa1DcDZ0I9Bqk=',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        isSearch == true
            ? Container(
                height: 50,
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: kGreyColor,
                    prefixIcon: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: searchBarTitle,
                  ),
                ),
              )
            : Container(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/themes/theme.dart';

import '../../core/constants/strings.dart';

class SearchField extends StatelessWidget {
  final double iconSize;
  final double spaceFromIcon;
  const SearchField({
    super.key,
    required TextEditingController searchController,

    required this.onChange, required this.iconSize, required this.spaceFromIcon,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  final Function(String name) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: _searchController,
        style: AppTheme.themeData.textTheme.labelMedium,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          hintText: AppStrings.search,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              bottom: 10,
              top: 10,
            ),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: iconSize,
            ),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: spaceFromIcon),
        ),
        onChanged: (String name) {
          onChange(name);
        },
      ),
    );
  }
}

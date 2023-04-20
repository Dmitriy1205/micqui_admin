import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/themes/theme.dart';

import '../../core/constants/strings.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required TextEditingController searchController,

    required this.onChange,
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
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          hintText: AppStrings.search,
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 12,
              bottom: 10,
              top: 10,
            ),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 45),
        ),
        onChanged: (String name) {
          onChange(name);
        },
      ),
    );
  }
}

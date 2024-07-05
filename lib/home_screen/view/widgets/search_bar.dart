import 'package:flutter/material.dart';
import '../../../utils/widgets/custom_text_form_field.dart';

class SearchBarForHomeScreen extends StatelessWidget {
  const SearchBarForHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Find things to do',
      borderRadius: 25,
      prefixIcon: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.search_sharp,
          color: Colors.grey,
          size: 30,
        ),
      ),
      validator: (p0) => null,
      textEditingController: TextEditingController(),
    );
  }
}

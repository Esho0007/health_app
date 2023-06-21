import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search doctor, medicine etc...',
        hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey[600]),
        fillColor: Colors.brown[100],
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)
        ),
        suffixIcon: Padding(padding: const EdgeInsets.all(10),
          child: Image.asset('assets/images/search.png',width: 20,height: 20,),
        ),
      ),
    );
  }
}
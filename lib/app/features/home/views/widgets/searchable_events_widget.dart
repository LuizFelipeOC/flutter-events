import 'package:flutter/material.dart';

class SearchableEventsWidget extends StatelessWidget {
  const SearchableEventsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                hintText: 'Nome do evento',
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

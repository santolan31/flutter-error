import 'package:flutter/material.dart';

class Movislider extends StatelessWidget {
  const Movislider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Populares",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => _MoviePoster()),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10,),
      child: Column(
        children:  [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, "details",arguments: "movie-instance"),
            child: ClipRRect(borderRadius:BorderRadius.circular(20),
              child: const FadeInImage(placeholder: NetworkImage("https://via.placeholder.com/300x400"), 
              image: NetworkImage("https://via.placeholder.com/300x400"),
              width: 130,
              height: 190,
              fit: BoxFit.cover,
              ),
            ),
          ),
         const SizedBox(height: 5),
          const Text("Matty y los astronautas perrunos",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,),

          

        ],
      
      ),
      

    );
  }
}

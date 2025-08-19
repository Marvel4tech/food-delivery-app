import 'package:flutter/material.dart';
import 'package:my_app/components/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // food image
          Image.asset(widget.food.imagePath),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food name
                Text(
                  widget.food.name, 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                
                // food price
                Text(
                  '\$${widget.food.price.toString()}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),

                const SizedBox(height: 10,),

                // food description
                Text(
                  widget.food.description,
                ),

                const SizedBox(height: 10,),

                Divider(color: Theme.of(context).colorScheme.secondary,),

                const SizedBox(height: 10,),
                
                // addons
                Text(
                  "Add-ons",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder:(context, index) {
                      // get individual addon
                      Addon addon = widget.food.availableAddons[index];
                  
                      // return checkbox UI
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: 
                          Text('\$${addon.price.toString()}', 
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                        value: false, 
                        onChanged:(value) {
                          
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          )

          // button to add to cart
        ],
      ),
    );
  }
}

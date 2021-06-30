//
//  CakeBoard.swift
//  RecipeApp
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CakeBoard: UIViewController {
    
    var tableView = UITableView()
    var cakeArray = ["ChoclateCake","RasmalaiCake","StrawberryCake","MangoCake","WhiteForestCake","VanillaCake","HazelnutCake"]
    var recipeDesc = ["Pre-heat oven to 350 degrees.Grease and flour three 6 round cake pans.Mix together flour, cocoa powder, baking powder and baking soda. Set asideIn a large bowl, beat butter, eggs and vanilla.Gradually add sugar.Beat on medium to high speed for about 3-4 minutes until well mixed.Alternately combine in flour mixture and milk to batter while beating.Continue to beat until batter is smooth.Pour equal amounts of batter into greased and floured round cake pans.Bake 30 to 35 minutes.Check with a toothpick to se if it is done. Bake a few minutes more, if needed.emove from oven and allow cakes to cool in pans for a few minutes.Place cakes on a wire rack, to them allow to completely cool.", "Step 1 Halve the sponge cake horizontally and place the lower layer in a baking bowl.Step 2 Cut the upper half into small pieces and place it along the sides of the bowl.Step 3Drain the rasmalai from the rabdi and place it over the cake. Drizzle rabdi over it. Spread cherries and chocolate chips over it.Step 4 Top it with the whipped cream and make a design with the help of a knife. Step 5 Decorate with chocolate flakes and serve.", "Step 1 Preheat oven to 190°C/375°F/ Gas Mark 5. Sift flour and baking powder together. Cream the butter and sugar together, then beat in eggs and flour. Mix well. Spoon into individual greased muffin moulds and bake in the preheated oven for fifteen to twenty minutes. Step 2 When they have cooled a little, remove from the tins onto a cooling tray. To decorate, make a strawberry butter icing by creaming butter, icing sugar, strawberry flavouring and colouring together. Step 3 When soft and well mixed, spoon into a piping bag with a star nozzle. Slice the top mound of the cake and cut into two. Pipe strawberry icing on the base and place the cut cake pieces over the icing in the shape of wings.", "Preheat oven to 180ºC. Grease a loaf tin with some butter and dust with some flour.ake butter in a mixing bowl, add castor sugar and beat with an electric beater till light and fluffy. Add eggs and beat till smooth.Add vanilla essence and mango puree and beat well.Sift flour into the bowl. Add chopped mango and pistachios and fold in well.Pour batter into the lined tin and tap lightly. Top with some pistachios. Put the tin in the preheated oven and bake for 25-30 minutes.", "In a bowl, Sieve all purpose flour, baking powder, baking soda and mix all ingredients one by one and make lump free batter with the help of electric beater.Take cake mould and Grease with the oil, put the cake batter in mould and bake it at 180 degree for 35 to 40 minut preheat oven.When it become completely cool, cut into 3 layers, spread sugar syrup on all layers.For icing, in a bowl add whipped cream and icing sugar, beat it for 10 to 15 minutes with electric beater.Put one layer of cake on cake board, spread cream on it, put some cherries and chocolate, then put second cake layer. Again put cream, cherries, chocolate and third layer of cake.","Pre -heat the oven to 180 degree C and line an 8 inch round cake pan with parchment paper.In a bowl whisk together flour and baking powder and set a side.In a separate bowl add the yogurt and sprinkle baking soda over it and set it aside to foam up.Whisk together castor sugar and oil in a separate bowl until pale and well combined.Now pour the yogurt mixture to the oil and sugar mixture and mix well.Add the vanilla extract.Gently fold in the flour and mix until everything is well combined there are no large flour pockets in the batter. Do not over mix at this stage", "Add baking soda to the almond milk vinegar mixture and stir.Add the sugar, maple syrup and almond milk mixture to the flax egg and beat/whisk to combine. Then add applesauce, vanilla, melted coconut oil, salt and mix.Add cocoa powder, almond meal, oat flour and gluten free flour and beat/whisk to combine. If the batter appears too thick, add a touch more almond milk, but it should be perfect. It should resemble a semi-thick batter that’s pourable.Divide batter evenly between cake pans (if using muffin tins, it should be enough for roughly 24 filling generously 3/4 full // amount as original recipe is written).Bake cake for 35-45 minutes or more (cupcakes for about 29-35 minutes) or until a toothpick inserted into the center comes out clean and the top appears dry. Time will vary if you sub ingredients, as well as depending on the size of your pan Let rest in the tin for 15-20 minutes, then carefully run a butter knife along the edges and invert onto cooling racks."]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List Of Cake Recipes"
        view.backgroundColor = .white
        setTableView()
    }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
        func setTableView() {
            tableView.frame = self.view.frame
            tableView.backgroundColor = UIColor.clear
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorColor = UIColor.clear
            tableView.backgroundColor = UIColor.clear
            self.view.addSubview(tableView)
            tableView.register(CakeCell.self, forCellReuseIdentifier: "Cell")
        }
}
    
extension CakeBoard: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cakeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CakeCell
        
        cell.userImage.image = UIImage(named: cakeArray[indexPath.row])
        cell.namelbl.text = cakeArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //if let vc = storyboard.instantiateViewController(withIdentifier: "CakeDetailVC") as? CakeDetailVC{
        let vc = CakeDetailVC()
            vc.desc = recipeDesc[indexPath.row]
            vc.image = UIImage(named: cakeArray[indexPath.row])!
            vc.lbl = cakeArray[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
}
//}

-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daily_plan_meals`
--

DROP TABLE IF EXISTS `daily_plan_meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_plan_meals` (
  `id` int(11) DEFAULT NULL,
  `weakly_diet_plans_id` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `meal_type` int(11) DEFAULT NULL,
  `meals_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_plan_meals`
--

LOCK TABLES `daily_plan_meals` WRITE;
/*!40000 ALTER TABLE `daily_plan_meals` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_plan_meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` int(11) DEFAULT NULL,
  `meals_id` int(11) DEFAULT NULL,
  `ingredient` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals`
--

DROP TABLE IF EXISTS `meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meals` (
  `id` int(11) DEFAULT NULL,
  `type` text,
  `title` text,
  `img` text,
  `preparation` text,
  `Calories` text,
  `Fat` text,
  `Saturated Fat` text,
  `Cholesterol` text,
  `Sodium` text,
  `Carbs` text,
  `Fiber` text,
  `Sugar` text,
  `Protein` text,
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals`
--

LOCK TABLES `meals` WRITE;
/*!40000 ALTER TABLE `meals` DISABLE KEYS */;
INSERT INTO `meals` VALUES (7,'Breakfast','VEGGIE EGG WHITE OMELETTE','images/Cjkfqk2mDbywGgbBhQEag4nwgQZiLbmueRCUvIoj.png','<ul>\r\n	<li>Heat a medium-sized pan and spray with cooking spray over medium-high heat</li>\r\n	<li>Add spinach and bell peppers, saute for 3 minutes</li>\r\n	<li>Pour egg whites into pan on top of the sauteed veggies, sprinkle goat cheese and cook until firm for an additional 4 minutes</li>\r\n	<li>Flip and fold omelette, side onto a place and enjoy with your favorite hot sauce</li>\r\n</ul>','170','1 g','','0 mg','125 mg','1 g','2 g','0 g','17 g','VEGGIE EGG WHITE OMELETTE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Breakfast','GRILLED AVO & EGGS','images/warmGjNrzXpvYxd8TQD8kOAHl7gcpFj8DwW4viO7.png','<ul>\r\n	<li>Slice open avocado, remove the seed and peel skin off.</li>\r\n	<li>Cut avocado into thick slices</li>\r\n	<li>Heat pan on high with some olive oil and add sliced avocado to pan</li>\r\n	<li>Cook for 3-4 minutes on each side until golden and crispy and remove from pan</li>\r\n	<li>In same pan use some cooking spray and crack your eggs into hot pan, sprinkle sea salt and pepper and fry your eggs until crispy on one side</li>\r\n	<li>Assemble your grilled avocado and then fried eggs with some chopped chives</li>\r\n</ul>','350','30 g','','0 mg','8 mg','3 g','8 g','0 g','13 g','GRILLED AVO EGGS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Breakfast','PROTEIN BERRY OVERNIGHT OATS','images/vJxS1liXcy04q54vEem4epDDAeDLKTMshiCVZ2ic.png','<ul>\r\n	<li>Whisk together all ingredients in a medium sized bowl. Spoon mixture in a sealed container.</li>\r\n	<li>Refrigerate for at least 4 hours ( best overnight) and enjoy with some fresh berries on top.</li>\r\n</ul>','225','6 g','','0 mg','0 mg','19 g','14 g','2 g','19 g','PROTEIN BERRY OATS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Breakfast','VINCE’S FAVORITE BAKED EGGS','images/1txl1JFdbdLs3jHZF4X6UBNxkTeHDoGfGZIMshFc.png','<ul>\r\n	<li>Preheat Oven to 400 degrees F</li>\r\n	<li>Chop turkey bacon into small pieces</li>\r\n	<li>In a pan over medium heat add 1 teaspoon of coconut oil and add your chopped bacon to pan. Cook bacon 2-3 minutes on each side until crispy. Remove bacon from pan and set aside.</li>\r\n	<li>In the same pan, add your spiralized zucchini or sweet potato and cook for 4 minutes over medium heat</li>\r\n	<li>In 2 ramekins ( or small oven safe dishes) Layer your zucchini or sweet potato on the bottom of dish, then chopped bacon and crack an egg on top. Sprinkle with some salt and pepper on top.</li>\r\n	<li>Bake for 15-20 minutes until eggs are cooked to your liking</li>\r\n</ul>','273','16 g','','15 mg','237 mg','14 g','0 g','4 g','26 g','BAKED EGGS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Breakfast','BLUEBERRY PROTEIN PANCAKES','images/EK3AATaGJNFwUCmNShF6PLd0B5vljO2vyWGPS8Pb.png','<ul>\r\n	<li>In a blender place raw, uncooked oatmeal and blend until it resembles a fine flour.</li>\r\n	<li>Add eggs, banana, protein powder, and baking powder and pulse blend until smooth.</li>\r\n	<li>Add blueberries into the batter and mix using a spoon.</li>\r\n	<li>Place a skillet on medium-high heat and measure out about 1/8 cup or 2 tbsp of batter per pancake.</li>\r\n	<li>Cover the pancakes while they cook to help the inside cook faster. Cook them for about 1-2 minutes over medium heat on the first side, and then flip and cook 1 minute on the other side.</li>\r\n	<li>Serve with some sugar free syrup</li>\r\n</ul>','180','1.5 g','','7 mg','22 mg','22 g','15 g','0 g','37 g','BLUEBERRY PROTEIN PANCAKES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Breakfast','ALMOND CACAO OVERNIGHT OATS','images/lIjq8uIARAfyvMfSnUV4nLKssjHSFmd4pYvyYPOi.png','<ul>\r\n	<li>Whisk together all ingredients in a medium sized bowl except for shredded coconut. Spoon mixture in a sealed container.</li>\r\n	<li>Refrigerate for at least 4 hours ( best overnight) and enjoy with some unsweetened coconut on top before serving.</li>\r\n</ul>','265','5 g','','0 mg','8 mg','14 g','12 g','2 g','28 g','ALMOND CACAO OATS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Breakfast','MORNING POWER PROTEIN SHAKE','images/To1iAR2JwLENV8hOJeCoOkhT8fOP1i1aQ4FkeQ9d.png','<ul>\r\n	<li>Add all ingredients into blender and blend until completely smooth for 2 minutes.</li>\r\n</ul>','420','8 g','','0 mg','7 mg','6 g','8 g','0 g','36 g','MORNING POWER PROTEIN SHAKE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Breakfast','EASY BANANA PROTEIN PANCAKES','images/CJlJHnFJ3FWeXjzryckG6Nr63LKePj2hZedFUqtV.png','<ul>\r\n	<li>In a medium bowl, mash the banana and crack the eggs in it, stirring until the mixture is combined.</li>\r\n	<li>Heat a greased griddle using 1 teaspoon of coconut oil( or cooking spray) or frying pan on medium heat and pour about a 2.5-inch wide puddle of batter.</li>\r\n	<li>Carefully flip the pancake after about 25 seconds or when it browns.</li>\r\n	<li>The recipe makes 3-4 small pancakes. Serve with some sugar free syrup</li>\r\n</ul>','180','5 g','','0 mg','13 mg','13 g','2 g','9 g','14 g','BANANA PROTEIN PANCAKES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Breakfast','AVOCADO TOAST W/ FRIED EGG','images/418LdBNZ31de0iFY6MyXNEeiIoMQGxbxAnFPCNQf.png','<ul>\r\n	<li>Toast one piece of whole grain bread.</li>\r\n	<li>Heat a small pan with cooking spray over medium-high heat.</li>\r\n	<li>Crack egg into pan, sprinkle with sea salt and pepper and cook until your it is to your liking. About 2 minutes. Turn off heat and flip egg.</li>\r\n	<li>Mash your avocado and spread on toast. Top with fried egg and drizzle hot sauce on top.</li>\r\n</ul>','250','11 g','','111 mg','5 mg','10 g','4 g','0 g','12 g','AVOCADO TOAST FRIED EGG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Breakfast','QUICK MORNING SCRAMBLE','images/J5TnIE3DaLwF9cWsBqWFq6MSSnMS1HKUl2A1QzRU.png','<ul>\r\n	<li>In a bowl crack your eggs and add some sea salt and pepper and set aside.</li>\r\n	<li>Thinly slice mushrooms and chop tomatoes into bite size pieces.</li>\r\n	<li>Heat a medium pan and coat with some cooking spray over medium-high heat.</li>\r\n	<li>Add in tomatoes, mushrooms and your greens ( kale or spinach)</li>\r\n	<li>Saute for 3 minutes and then pour your eggs over veggies</li>\r\n	<li>With a spatula slowly begin folding eggs and veggies together, allow eggs to cook thoroughly until no longer runny.</li>\r\n	<li>Add cheese on top and enjoy!</li>\r\n</ul>','155','12 g','','216 mg','11 mg','0 g','4 g','0 g','19 g','EGG MORNING SCRAMBLE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Mid-Morning Snack','CACAO CHIA SEED PUDDING','images/gAPstD6IW6keIhG8hypf5SyoCbiQS0G429FaOvGJ.png','<ul>\r\n	<li>Place all ingredients into blender and blend on high for 1-2 minutes until completely smooth</li>\r\n	<li>Pour mixture into jar and refrigerate for 4 hours or overnight. Serve with a hand full of berries on top.</li>\r\n</ul>','265','9 g','','0 mg','5 mg','12 g','20 g','0 g','19 g','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Mid-Morning Snack','STRAWBERRY GREENS SMOOTHIE','images/QcAcpmJMBCJXa9AiV1eFSBj4kBV2PVjoRwgpT25G.png','<ul>\r\n	<li>Place all ingredients into blender and blend on high for 1-2 minutes until completely smooth.</li>\r\n</ul>','160','4 g','','50 mg','35 mg','3 g','12 g','0 g','33 g','STRAWBERRY GREENS SMOOTHIE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Mid-Morning Snack','COOL GREENS SMOOTHIE','images/ltJRosEmFCHuikfBhMUiv9nw8zYKYtSdlpX2bLSV.png','<ul>\r\n	<li>Place all ingredients into blender and blend on high for 1-2 minutes until completely smooth.</li>\r\n</ul>','190','4.5 g','','50 mg','55 mg','3 g','12 g','7 g','35 g','GREENS SMOOTHIE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Mid-Morning Snack','GREEK YOGURT PARFAIT','images/WepDb2qAiGKqCebL1qGYUcm1vL2T5Wfozrhxvboy.png','<ul>\r\n	<li>Assemble your parfait with greek yogurt on the bottom, followed by chopped nuts, coconut and cacao nibs.</li>\r\n</ul>','190','7 g','','9 mg','61 mg','2 g','3 g','5 g','26 g','GREEK YOGURT PARFAIT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Mid-Morning Snack','DO-IT-YOURSELF TRAIL MIX','images/NLdiHATIPTCt568SUKxw32ZMYB1MnCmqhYAgemER.png','<ul>\r\n	<li>In a bowl mix all ingredients together and store in a sealed container.</li>\r\n	<li>Dish out 3 tablespoons for a serving and save the rest for late. Mix will stay fresh for 3 months.</li>\r\n</ul>','182','9 g','','0 mg','15 mg','8 g','3 g','8 g','6 g','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Mid-Morning Snack','APPLE & ALMOND BUTTER','images/r13T7EPVUsUOAiQ8zDgiwRyz1NNpKzB3phOJ8uxO.png','<ul>\r\n	<li>Slice apple, sprinkle some cinnamon on top and serve alongside 1 tablespoon of a nut butter.</li>\r\n</ul>','190','7 g','','9 mg','61 mg','25 g','3 g','19 g','8 g','APPLE ALMOND BUTTER','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Mid-Morning Snack','HOMEMADE HUMMUS & VEGGIES','images/IzM0F330h97CfmuVlldgaNNamdFJJ8mgt0fS19no.png','<ul>\r\n	<li>In a food processor, puree 1 can chickpeas with the olive oil, lemon juice, tahini (if using), cumin, and &frac34; teaspoon salt until smooth and creamy. Add 1 to 2 tablespoons water as necessary to achieve the desired consistency. Transfer to a bowl.</li>\r\n	<li>Store in refrigerator in sealed container for up to one week.</li>\r\n	<li>Scoop out 2 tablespoons per serving and eat alongside your favorite raw veggies.</li>\r\n</ul>','60','4 g','','0 mg','57 mg','2 g','4 g','0 g','6 g','HUMMUS VEGGIES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Mid-Morning Snack','BANANA NUT BUTTER TOAST','images/7doNRvcvZo99HsL4T8t4GbhLj2hkNh1cOyHWdvnN.png','<ul>\r\n	<li>Toast bread and spread one tablespoon of desired nut butter and slice &frac12; banana on top. Sprinkle with &frac12; teaspoon of chia seed</li>\r\n</ul>','180','11 g','','9 mg','61 mg','9 g','9 g','0 g','14 g','BANANA NUT BUTTER TOAST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Mid-Morning Snack','POWER GREENS JUICE','images/GSK2GsSQS5am4lC1lBSgUtJxPsHJZNCpFVt4kBRo.png','<ul>\r\n	<li>Add all ingredients into blender and blend until completely smooth for 2 minutes.</li>\r\n</ul>','180','2.5 g','','0 mg','180 mg','11 g','3 g','11 g','33 g','POWER GREENS JUICE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Mid-Morning Snack','COTTAGE CHEESE & BERRIES','images/0oHjENiIZDnQvt6sN9XR6g1Hvh7lccFRj5Rd9t22.png','<ul>\r\n	<li>In a bowl measure out &frac12; cup cottage cheese followed by berries and sprinkle stevia on top.</li>\r\n</ul>','190','3.5 g','','38 mg','819 mg','8 g','8 g','6 g','26 g','COTTAGE CHEESE BERRIES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Lunch','MEDITERRANEAN KALE & CHICKEN SALAD','images/M7fRGixqsWsQHgHLGUkuzcDaTwn2FqXXPzAQoe15.png','<ul>\r\n	<li>Whisk all dressing ingredients and separate half to use to marinade chicken.</li>\r\n	<li>Pour dressing on chicken breast and allow to marinade for 10 minutes.</li>\r\n	<li>Heat pan and spray with cooking spray and cook chicken for 6 minutes on both sides, until completely cooked.</li>\r\n	<li>Assemble salad ingredients and slice cooked chicken breast on top, drizzle with dressing.</li>\r\n</ul>','310','9 g','','0 mg','50 mg','7 g','4 g','0 g','17 g','MEDITERRANEAN KALE CHICKEN SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Lunch','CHICKEN AND AVOCADO BURRITO','images/JmQzsKrQl3Ii5J8UrIclRlkgaTfhmfUO0BzewXcr.png','<ul>\r\n	<li>Assemble burritos starting with the chicken on the bottom followed by greek yogurt, salsa, cheese and fold burrito</li>\r\n	<li>In a pan-fry skillet warm up burrito and get the tortilla crispy on both sides. Enjoy!</li>\r\n</ul>','270','11 g','','118 mg','125 mg','10 g','3 g','0 g','27 g','CHICKEN AVOCADO BURRITO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Lunch','TURKEY TACO BOWL','images/75s7PR2KFEOpU1BRPd2cCnnMMSidsgoevEmh77Kk.png','<ul>\r\n	<li>In a medium pot cook brown rice according to directions on package, add lime zest and salt to the cooking water.</li>\r\n	<li>In a sauce pan spray with cooking spray and add ground turkey. Cook on medium heat, add taco seasoning. Cook for 10 minutes or until cooked thoroughly and mix in cheese.</li>\r\n	<li>Assemble tacos bowls with &frac12; cup cooked brown rice, &frac12; cup cooked ground turkey, &frac14; cup salsa and chopped romaine lettuce on top.</li>\r\n</ul>','310','10 g','','115 mg','121 mg','16 g','4 g','0 g','37 g','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Lunch','TURKEY & TATER SANDWICH','images/HNZlinSpJnknpRNa8Ow048itE7rPvVlBBE93O0tV.png','<ul>\r\n	<li>Preheat oven to 400 F.</li>\r\n	<li>Line baking sheet with parchment paper or coat with olive oil Slice sweet potatoes into even thickness ( approx 1/2 in) discs and lay out on baking pan.</li>\r\n	<li>Sprinkle with sea salt</li>\r\n	<li>Bake for 20 minutes or until easily pierced with a fork.</li>\r\n	<li>Reserve 2 sweet potato slices and assemble your favorite sandwich protein, spread some mustard, add your greens and tomato slice close up with the other half of sweet potato &ldquo;bread&rdquo;</li>\r\n</ul>','140','2.5 g','','119 mg','215 mg','13 g','6 g','5 g','14 g','TURKEY TATER SANDWICH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Lunch','VEGGIE CHOPPED SALAD','images/WSWh3zL8IPywK9VwTV49HC7QiWu6epUoBRgMPG5o.png','<ul>\r\n	<li>In large mixing bowl combine arugula, diced tomatoes, cucumbers and carrots, cheese, walnuts, chickpeas.</li>\r\n	<li>In a small bowl whisk together all dressing ingredients.</li>\r\n	<li>Toss dressing with salad and enjoy.</li>\r\n</ul>','410','16 g','','31 mg','194 mg','3 g','12 g','0 g','20 g','VEGGIE CHOPPED SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Lunch','LEMON GREEK SALAD','images/NgyCI6idpAdufm1KmmCgsmwqmUokrmUcK4H7fC5A.png','<ul>\r\n	<li>In a bowl toss together spinach, tomatoes, chickpeas, cucumbers, parsley, avocado and feta.</li>\r\n	<li>For the dressing in a small bowl whisk together all ingredients. Pour over salad and enjoy!</li>\r\n</ul>','490','19 g','','40 mg','194 mg','3 g','15 g','0 g','22 g','LEMON GREEK SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Lunch','POPPY SEED KALE BERRY SALAD','images/jJ9uqck1UlsdDWMHH9IqXNhYW1px2tM1YZvp1Hgz.png','<ul>\r\n	<li>Assemble salad with kale, almonds and berries and set aside.</li>\r\n	<li>In a small bowl combine dressing ingredients whisk until well blended and pour over your salad.</li>\r\n</ul>','210','7 g','','33 mg','165 mg','3 g','3 g','4 g','18 g','POPPY SEED KALE BERRY SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Lunch','CAULIFLOWER RICE VEGGIE BOWL','images/dQejkDd2cHQspiVrhPXOJlWYnGzaDgF3u78KpRDb.png','<ul>\r\n	<li>Heat pan and spray with cooking spray. Add cauliflower rice and season with some salt, pepper and paprika ( or can use a dash of any hot sauce of choice).</li>\r\n	<li>Cook until golden color and remove from heat.</li>\r\n	<li>Begin layering bowl with the 1st layer as cauliflower rice, then chopped carrots, cucumber, &frac12; sliced avocado and 2 tablespoons of hummus. Enjoy!</li>\r\n</ul>','400','10 g','','0 mg','42 mg','6 g','9 g','0 g','22 g','CAULIFLOWER RICE VEGGIE BOWL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Lunch','AVO, SPINACH & EGG BOWL','images/JoWOsVGXJreBxDKRwYjI1ustCHDCdAw9inP5wcjt.png','<ul>\r\n	<li>In a fry pan heat 1/2 teaspoon of coconut oil and add in 2 cups of spinach sauce until spinach is slightly wilted but not over soggy. Remove from pan and put spinach in bowl.</li>\r\n	<li>In the same pan whip out any liquid from spinach and return to heat and add your remaining &frac12; teaspoon of coconut oil to pan. Crack 2 eggs and fry them until your desired liking.</li>\r\n	<li>Put fried eggs on top of your sauteed spinach, a few dashes of everything bagel seasoning and a half of avocado. Enjoy!</li>\r\n</ul>','340','28 g','','31 mg','126 mg','2 g','10 g','0 g','22 g','AVO SPINACH EGG BOWL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Lunch','SALMON AND MUSHROOM SKEWERS','images/TbOeIwLEspnrYyTg62d0v6gnv1bhUXwbhsYQt4pT.png','<ul>\r\n	<li>Preheat your broiler to high.</li>\r\n	<li>In a small bowl combine coconut oil, lemon juice, spices, salt and pepper.</li>\r\n	<li>Slice salmon into bite size pieces and add them to bowl.</li>\r\n	<li>Coat salmon in marinade</li>\r\n	<li>Begin to assemble skewers alternating with one piece of salmon and mushroom. Should make 3 skewers total.</li>\r\n	<li>Place under broiler for 6-8 minutes until your liking. Serve with an extra squeeze of lemon juice.</li>\r\n</ul>','540','34 g','','109 mg','117 mg','3 g','12 g','0 g','49 g','SALMON MUSHROOM SKEWERS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Mid-Afternoon Snack','COFFEE PROTEIN SHAKE','images/SkWRvwPGDhRqXoT0qj5w3a9XhYVS16ymXTHoOO4n.png','<ul>\r\n	<li>Add all ingredients into blender and blend until completely smooth for 2 minutes.</li>\r\n</ul>','170','3.5 g','','0 mg','118 mg','2 g','2 g','5 g','28 g','COFFEE PROTEIN SHAKE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Mid-Afternoon Snack','SPICY AVOCADO TOAST','images/3EyoITNd05JFga8vvKyq484ifTEgu7oOpMeiBbU2.png','<ul>\r\n	<li>Toast one slice of whole grain spread and spread &frac14; avocado on top. Sprinkle chili flakes on top.</li>\r\n</ul>','150','4 g','','0 mg','90 mg','2 g','5 g','0 g','7 g','SPICY AVOCADO TOAST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Mid-Afternoon Snack','GREEK YOGURT BANANA MUFFINS','images/sMjZF30vQxiuWAnSVqfkHSV9LluLK1jxnAK6xXCK.png','<ul>\r\n	<li>Preheat oven to 350F and line a muffin pan with liners.</li>\r\n	<li>In a large mixing bowl mash bananas and then add ingredients except chocolate chips (baking soda, stevia, baking powder, greek yogurt, raw oats, almond milk)</li>\r\n	<li>Mix until everything is incorporated and fold in chocolate chips</li>\r\n	<li>Porton out into 12 muffins and bake for 20 minutes or until golden brown and firm.</li>\r\n</ul>','90','2.5 g','','0 mg','43 mg','8 g','4 g','5 g','6 g','GREEK YOGURT BANANA MUFFINS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Mid-Afternoon Snack','MATCHA BLISS BITES','images/F8IkTlz8CVKdM39c0iU6tuLbCIHyqCKwBYkuMpKl.png','<ul>\r\n	<li>Place all the ingredients (except the extra 1/4 cup almonds for rolling) into a food processor. Blend for 1 minute or until the mixture becomes smooth and thick like a paste.</li>\r\n	<li>Scoop out enough of the mixture to form a 1 inch ball (about 1 1/2 tbsp) and roll between your hands to create a small, round ball.</li>\r\n	<li>Set aside and repeat until all the mixture has been rolled into balls.</li>\r\n	<li>Place the chopped 1/4 cup of almonds on a plate and roll the balls through the nuts, pressing them into the balls so they stick.</li>\r\n	<li>Refrigerate for 15 minutes and then enjoy. Keeps for up to one week in refrigerator. Serving size is 2 balls.</li>\r\n</ul>','80','4 g','','0 mg','66 mg','8 g','1 g','7 g','4 g','MATCHA BLISS BITES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Mid-Afternoon Snack','PEANUT BUTTER ENERGY BITES','images/N4cYumz0FkH9ZXwLqri5mjx4RswYV5gR7cOndQBh.png','<ul>\r\n	<li>Combine all 5 ingredients in a medium bowl. Stir to combine. Place in the refrigerator for 15-30 minutes so they are easier to roll.</li>\r\n	<li>Roll into 12 bites and store in the fridge for up to a week.</li>\r\n</ul>','90','4.5 g','','0 mg','15 mg','9 g','4 g','7 g','5 g','PEANUT BUTTER ENERGY BITES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Mid-Afternoon Snack','BLACK BEAN DIP','images/NB3gcIeorl6J69cS0OyVur1WPPjF2TzUc0exP2og.png','<ul>\r\n	<li>In a bowl mix together black beans, salsa, cottage cheese and guacamole.</li>\r\n	<li>Spread on celery stalks for a perfect afternoon snack.</li>\r\n</ul>','110','4.5 g','','63 mg','110 mg','11 g','4 g','0 g','13 g','BLACK BEAN DIP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Mid-Afternoon Snack','HEALTHY BRUSCHETTA TOAST','images/kVI77YoHgYFUyIFwrS4W04TlTQeD1b3uqKOdddtF.png','<ul>\r\n	<li>Toast one piece of whole grain bread.</li>\r\n	<li>Chop 1 small tomato, diced.</li>\r\n	<li>On toasted bread brush with 1/2 teaspoon olive oil and topped with 1 tablespoon plain 2 percent Greek yogurt and a mixture of 3 tablespoons diced tomatoes with a few pieces of fresh basil.</li>\r\n</ul>','180','4 g','','0 mg','0 mg','14 g','4 g','0 g','7 g','HEALTHY BRUSCHETTA TOAST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Mid-Afternoon Snack','CUCUMBER TURKEY SLIDERS','images/ENf1W0WocWiVK111yJxPeclEVvmH427oe7WMx2qL.png','<ul>\r\n	<li>Slice cucumber in one inch thick slices and spread mustard one side of on each slice.</li>\r\n	<li>Cut turkey deli into bite size squares to put on top of cucumbers.</li>\r\n	<li>Assemble turkey on cucumbers and enjoy.</li>\r\n</ul>','90','1.5 g','','20 mg','115 mg','0 g','2 g','0 g','10 g','CUCUMBER TURKEY SLIDERS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Mid-Afternoon Snack','GREEK YOGURT DIP','images/qrGbyj68gzcmIQSX6qFAYh3m4uzAoCnN6dxGZ1eh.png','<ul>\r\n	<li>Combine all ingredients in a medium mixing bowl and serve alongside raw veggies of your choice</li>\r\n</ul>','90','2.5 g','','0 mg','32 mg','6 g','4 g','6 g','12 g','GREEK YOGURT DIP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Mid-Afternoon Snack','AFTERNOON ENERGY JUICE','images/kjfka7ooA8zKqFyAlGxtlLsTKten1R0dRSln00yE.png','<ul>\r\n	<li>Combine all ingredients in a blender until smooth for about 2 minutes.</li>\r\n</ul>','130','2 g','','0 mg','115 mg','8 g','4 g','15 g','6 g','AFTERNOON ENERGY JUICE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Mid-Afternoon Snack','BAKED SWEET POTATO FRIES','images/my48nzQ2lsf01Ae6YAh6LTP9y5Q98YXXnNPMFdIi.png','<ul>\r\n	<li>Preheat oven to 425 F and line a baking pan with foil</li>\r\n	<li>Slice sweet potato in 1/2 inch thick medallions and place on baking sheet.</li>\r\n	<li>Drizzle with olive oil and toss together to coat the fries.</li>\r\n	<li>Now add seasonings and toss together again and lay out sweet potatoes flat on baking sheet.</li>\r\n	<li>Bake for 20 minutes</li>\r\n	<li>In a small bowl add your greek yogurt and hot sauce and mix together. Serve alongside fries for dipping.</li>\r\n</ul>','90','3.5 g','','0 mg','73 mg','27 g','4 g','6 g','5 g','BAKED SWEET POTATO FRIES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Dinner','TURKEY AND ZUCCHINI MEATBALLS','images/cbefgX4nmpKQAndVNqSLQGkKOYVzXzZTGtrpYQZQ.png','<ul>\r\n	<li>Combine all the ingredients in a bowl. You will have a pretty wet mixture. Squeeze together 1 inch balls. The mixture is almost too wet to really roll. Don&#39;t worry, it will firm up once it hits the hot oil in the pan.</li>\r\n	<li>Heat 3 tbsp olive oil in a cast iron skillet or non-stick pan. Turn the heat on to high and add the meatballs. Gently brown each side. The meatballs will be delicate to move around at first, but it will become easier as each side browns and they start to firm up.</li>\r\n	<li>Then, add the strained tomatoes, some more sea salt, black pepper, and some additional parsley. Reduce the heat and simmer for 20 minutes or until the meatballs are cooked through. Enjoy by themselves or with some quinoa.</li>\r\n</ul>','170','9 g','','176 mg','125 mg','6 g','8 g','0 g','27 g','TURKEY ZUCCHINI MEATBALLS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Dinner','CHICKEN CHOP SALAD','images/HVDBVP1fiAnUHUYhcVQqi9iKAqscbpIcy0Ovif0W.png','<ul>\r\n	<li>Place all the chopped ingredients in a large mixing bowl.</li>\r\n	<li>Squeeze the juice from 1 lemon over the bowl.</li>\r\n	<li>Sprinkle with a pinch of sea salt and some black pepper.</li>\r\n	<li>Start to drizzle with olive oil and red wine vinegar. Mix to coat everything. Keep adding splashes of vinegar, olive oil, salt, and pepper until you get the tang you want. Enjoy!</li>\r\n</ul>','170','12 g','','91 mg','125 mf','3 g','6 g','0 g','24 g','CHICKEN CHOP SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Dinner','TOFU LETTUCE WRAPS','images/lt6hkFTNfs4c15KMXTfkeP6uyf8KJ2IZR9C6w0cw.png','<ul>\r\n	<li>In a large saute pan add 1 tablespoon coconut oil over medium-high heat. Add the chopped diced onions and carrots to pan. Cook for 5 minutes.</li>\r\n	<li>Then add garlic and fresh ginger. Cook for an additional 3 minutes.</li>\r\n	<li>Remove mixture from pan and place in bowl. Set aside.</li>\r\n	<li>Using the same pan, bring it back up to temperature over medium-high heat. Add 1 tablespoon coconut oil and let oil get hot. Should start to bubble.</li>\r\n	<li>Now add cubes tofu and allow it cook on one side for 3 minutes to get crispy and then flip for another 3 minutes on the other side.</li>\r\n	<li>In the pan with tofu add back in your bowl of sauteed veggies. Cook together for 3 minutes.</li>\r\n	<li>In a small bowl combine all sauce ingredients and whisk.</li>\r\n	<li>Arrange lettuce cups on a plate and fill with 2 tablespoons of tofu mixture and drizzle with sauce.</li>\r\n</ul>','157','7 g','','0 mg','19 mg','1 g','2 g','0 g','23 g','TOFU LETTUCE WRAPS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Dinner','LEMON CHICKEN & ASPARAGUS','images/6SXjzfBAobv8aBzmL5g2edFESbuS4oAoRJCExWfo.png','<ul>\r\n	<li>Cut chicken breasts in half horizontally to make them thinner pieces.</li>\r\n	<li>Place the flour and salt and pepper in a shallow dish and gently toss each chicken breast in the dish to coat.</li>\r\n	<li>Add olive oil or ghee to a large skillet over medium high heat; add the chicken and saute for 3-5 minutes on each side, until golden brown, sprinkling each side with the lemon pepper directly in the pan. When the chicken is golden brown and cooked through, transfer to a plate.</li>\r\n	<li>Add the chopped asparagus to the pan. Saute for a few minutes until bright green and tender. Remove from the pan and set aside. Lay the lemon slices flat on the bottom of the pan and cook for a few minutes on each side without stirring so that they caramelize and pick up the browned bits left in the pan from the chicken and oil.</li>\r\n	<li>Assemble the chopped veggies and lemon on the bottom and top it off with a chicken breast. Enjoy!</li>\r\n</ul>','190','16 g','','0 mg','125 mg','16 g','9 g','0 g','27 g','LEMON CHICKEN ASPARAGUS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Dinner','QUINOA & ROASTED VEGGIE BOWL','images/KFwTdAA4ZfLEf1ch0b5RPkGgOtztaOQ27z2a5lmn.png','<ul>\r\n	<li>Cook quinoa according to packing and set aside.</li>\r\n	<li>Preheat oven to 425F and line a sheet pan with foil and spray with cooking spray.</li>\r\n	<li>Arrange cubed butternut squash, mushrooms, broccoli on pan and sprinkle with sea salt, pepper and paprika.</li>\r\n	<li>Bake for 25 minutes. Serve roasted veggies on top of quinoa.</li>\r\n</ul>','310','14 g','','0 mg','125 mg','18 g','6 g','0 g','37 g','QUINOA & ROASTED VEGGIE BOWL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Dinner','AHI TUNA STEAKS OVER KALE','images/2WNPcbAp0ejerJZ1QQ6XtM4tTapfdGixU7CKP1oC.png','<ul>\r\n	<li>Heat a cast iron skillet or fry pan over medium-high heat add in olive oil.</li>\r\n	<li>Salt and Pepper both sides of tuna steak</li>\r\n	<li>Once pan is hot and starting to smoke place tuna steak on pan over medium-high heat for 3 minutes on each side for rare ahi tuna. If you like it more cooked search for an additional two minutes on each side</li>\r\n	<li>Serve immediately alongside baby kale and squeeze some more lemon or lime juice over kale.</li>\r\n</ul>','320','21 g','','660 mg','125 mg','9 g','4 g','6 g','32 g','AHI TUNA STEAKS OVER KALE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Dinner','CHICKEN FAJITAS SALAD','images/GgtZUnaVWfyyaOlnfp9630ebXSI8ms9iT8qM3chT.png','<ul>\r\n	<li>Preheat oven to 400F</li>\r\n	<li>Line a baking sheet with foil and spray with cooking spray.</li>\r\n	<li>On a cutting board, first slice bell pepper and onion and place on pan. Now on same cutting board slice chicken into thin strips and place on pan.</li>\r\n	<li>Sprinkle taco seasoning over chicken and veggies.</li>\r\n	<li>Bake for 20 minutes and serve on top of a bed of lettuce.</li>\r\n</ul>','170','2 g','','0 mg','130 mg','4 g','2 g','0 g','33 g','CHICKEN FAJITAS SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Dinner','FARRO, SQUASH & CRANBERRY SALAD','images/iFHJKqR2v4lIjMGJkhfMe9sHCY3Vr4cWKnnoqXbC.png','<ul>\r\n	<li>In a medium pot, cook farro according to package. Once cooked, set aside.</li>\r\n	<li>Preheat oven to 425F and line baking sheet with foil.</li>\r\n	<li>Toss cubed butternut squash with olive oil, salt and pepper.</li>\r\n	<li>Bake for 25 minutes.</li>\r\n	<li>In a bowl mix together farro, butternut squash, cranberries, balsamic vinegar and goat cheese. Serve on top of a bed of spinach</li>\r\n</ul>','270','18 g','','0 mg','100 mg','19 g','2 g','15 g','17 g','FARRO SQUASH CRANBERRY SALAD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Dinner','PESTO SALMON W/ ROASTED BROCCOLI','images/wK5Mqkm3TW7sCE9E4fhzqIWSdJ0vhtTGPU4PgeUq.png','<ul>\r\n	<li>Preheat oven to 400F. Line 2 baking sheets with foil and spray with cooking spray.</li>\r\n	<li>Arrange salmon filet on one baking sheet and sprinkle salt and pepper on both sides. Spread pesto on top on filet. On the other baking sheet arrange broccoli drizzle with olive oil, salt and pepper. Place both baking sheets in oven</li>\r\n	<li>Cook for 16-20 minutes. Until salmon is cooked to your desire. Enjoy!</li>\r\n</ul>','270','33 g','','109 mg','117 mg','0 g','0 g','0 g','47 g','PESTO SALMON ROASTED BROCCOLI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Dinner','ZUCCHINI BEEF BURGERS','images/zKXmIOK6KJQpWwz1IjZeeNS0u8Bqi2lWmuAtZkir.png','<ul>\r\n	<li>Combine all into a bowl and mix by hand. Begin to form into patties the size of your fist. Should make 2 patties.</li>\r\n	<li>Pre-heat cast iron skillet or fry pan over medium-high heat. Add 1 teaspoon oil ( coconut, olive oil or ghee) let oil get hot and then place in your burger.</li>\r\n	<li>Cook for 4 minutes on the first side and flip and cook for 3 minutes on the other side or until your liking.</li>\r\n</ul>','390','21 g','','116 mg','135 mg','0 g','4 g','0 g','44 g','ZUCCHINI BEEF BURGERS','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(11) DEFAULT NULL,
  `migration` text,
  `batch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_10_08_102604_create_meals_table',2),(4,'2018_10_08_103554_create_ingredients_table',2),(9,'2018_10_08_104050_create_weakly_diet_plans_table',3),(10,'2018_10_08_104651_create_daily_plan_meals_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` text,
  `token` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` blob,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('migrations','10'),('users','1'),('meals','58');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `email` text,
  `email_verified_at` datetime DEFAULT NULL,
  `password` text,
  `remember_token` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Petrit Berisha','petrit.berisha@led-con.com','0000-00-00 00:00:00','$2y$10$T/yTl2hunm4JrzfmNvOuo.36viHrfMmzH13YR523CL7MGK24jCOnm','','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakly_diet_plans`
--

DROP TABLE IF EXISTS `weakly_diet_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weakly_diet_plans` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `starting_from` text,
  `days` int(11) DEFAULT NULL,
  `status` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakly_diet_plans`
--

LOCK TABLES `weakly_diet_plans` WRITE;
/*!40000 ALTER TABLE `weakly_diet_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `weakly_diet_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:53:52

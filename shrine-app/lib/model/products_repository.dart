// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.accessories,
        id: 0,
        isFeatured: true,
        name: 'Vagabond sack',
        price: 120,
        description: 'A must-have for the modern traveler, the Vagabond Sack features a spacious main compartment with soft yet sturdy canvas construction. Designed with vintage leather straps, an inner zipper pocket for valuables, and an adjustable shoulder strap for all-day comfort. Whether you are off to a weekend getaway or your favorite café, this bag combines rugged durability with effortless style.',
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Stella sunglasses',
        price: 58,
        description: 'Step into the spotlight with the Stella Sunglasses. These oversized frames offer full UV400 protection and come in a sleek, glossy black finish. The lightweight design makes them perfect for everyday wear, while the gold-tone accents at the temples add a touch of glam. Whether you\'re beach-bound or brunching, these sunnies complete any look.',
      ),
      Product(
        category: Category.accessories,
        id: 2,
        isFeatured: false,
        name: 'Whitney belt',
        price: 35,
        description: 'A wardrobe essential with a twist, the Whitney Belt is crafted from high-quality faux leather and finished with a statement gold-tone buckle. Designed to cinch the waist and elevate everything from dresses to high-rise jeans. Adjustable sizing ensures a custom fit, while the smooth texture adds polish to any outfit.',
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'Garden strand',
        price: 98,
        description: 'Add a whimsical touch to your look with the Garden Strand necklace. Hand-strung with pastel-toned beads and delicate floral charms, this piece brings a fresh and feminine vibe. The gold-plated lobster clasp ensures a secure fit, while the 2-inch extender gives you styling flexibility. Perfect for layering or standing on its own.',
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'Strut earrings',
        price: 34,
        description: 'Turn heads with these bold, modern earrings. The Strut Earrings feature a sculptural silhouette in a high-shine gold finish, designed to catch the light (and compliments). Lightweight for all-day wear, they secure with a post-back closure and pair beautifully with both casual and formal fits.',
      ),
      Product(
        category: Category.accessories,
        id: 5,
        isFeatured: false,
        name: 'Varsity socks',
        price: 12,
        description: 'Throw it back in style with the Varsity Socks—classic crew socks featuring retro stripes and soft cotton-blend fabric. With reinforced heels and toes, they’re made for long-lasting comfort whether you\'re hitting the gym or styling them with sneakers and skirts.',
      ),
      Product(
        category: Category.accessories,
        id: 6,
        isFeatured: false,
        name: 'Weave keyring',
        price: 16,
        description: 'Keep your keys stylishly secured with the Weave Keyring. Featuring a hand-braided faux leather loop and antique brass hardware, this keyring is both functional and fashion-forward. Clip it onto your bag or belt for easy access and added flair.',

      ),
      Product(
        category: Category.accessories,
        id: 7,
        isFeatured: true,
        name: 'Gatsby hat',
        price: 40,
        description: 'Classic felt hat for timeless style.',


      ),
      Product(
        category: Category.accessories,
        id: 8,
        isFeatured: true,
        name: 'Shrug bag',
        price: 198,
        description: 'Make a bold fashion statement with the Shrug Bag—an oversized shoulder bag that effortlessly blends utility and elegance. Featuring premium faux leather with a structured silhouette, magnetic snap closure, and a spacious interior that fits your essentials and more. Perfect for day-to-night transitions, with a minimalist look that complements any outfit.',
      ),
      Product(
        category: Category.home,
        id: 9,
        isFeatured: true,
        name: 'Gilt desk trio',
        price: 58,
        description: 'Elevate your workspace with the Gilt Desk Trio. This chic 3-piece set includes a pen holder, tray, and mini file organizer—all finished in a brushed gold tone. Crafted with sleek metallic lines and a soft matte base to prevent sliding. Perfect for adding a sophisticated touch to your office while keeping everything in its place.',
      ),
      Product(
        category: Category.home,
        id: 10,
        isFeatured: false,
        name: 'Copper wire rack',
        price: 18,
         description: 'Say goodbye to clutter with this sleek Copper Wire Rack. With a minimalist open-frame design, it’s perfect for organizing kitchen spices, bathroom essentials, or office supplies. Finished in a polished copper tone, this piece adds a modern touch to any space while remaining lightweight and functional.',

      ),
      Product(
        category: Category.home,
        id: 11,
        isFeatured: false,
        name: 'Soothe ceramic set',
        price: 28,
        description: 'Bring calm to your kitchen with the Soothe Ceramic Set. This 3-piece set features soft, pastel-glazed ceramics with subtle speckling and a handmade aesthetic. Microwave and dishwasher safe, they’re as functional as they are beautiful—perfect for tea time, snacks, or just sitting pretty on your shelf.'

      ),
      Product(
        category: Category.home,
        id: 12,
        isFeatured: false,
        name: 'Hurrahs tea set',
        price: 34,
        description: 'Delight your guests with the Hurrahs Tea Set, a charming nod to vintage afternoon tea culture. Crafted from durable porcelain with gold-rim detailing, this set includes two teacups and saucers with matching teaspoons. Timeless elegance for everyday moments or special occasions.'
      ),
      Product(
        category: Category.home,
        id: 13,
        isFeatured: true,
        name: 'Blue stone mug',
        price: 18,
        description: 'Sip in style with the Blue Stone Mug. Featuring a smooth matte glaze in calming ocean hues, this ceramic mug is perfect for coffee lovers and tea enthusiasts alike. The curved handle ensures a comfortable grip, while its 12 oz capacity makes it ideal for your daily brew.'
      ),
      Product(
        category: Category.home,
        id: 14,
        isFeatured: true,
        name: 'Rainwater tray',
        price: 27,
        description: 'Functional meets decorative in the Rainwater Tray—a ceramic catchall dish with a hand-painted blue ripple pattern. Perfect for holding jewelry, keys, candles, or skincare items. Its gently curved edges and smooth finish make it a versatile accent piece for any room.'
      ),
      Product(
        category: Category.home,
        id: 15,
        isFeatured: true,
        name: 'Chambray napkins',
        price: 16,
        description: 'Add a pop of texture to your table with Chambray Napkins. Woven from soft cotton-linen blend and finished with frayed edges for a casual yet refined look. Sold as a set of four, these reusable napkins are machine washable and perfect for both everyday meals and entertaining guests.'
      ),
      Product(
        category: Category.home,
        id: 16,
        isFeatured: true,
        name: 'Succulent planters',
        price: 16,
        description: 'Green up your space with these modern Succulent Planters. Each set includes three ceramic pots with drainage holes and bamboo trays, perfect for your mini succulents or herbs. Clean lines and neutral tones make them a stylish fit for any home décor aesthetic.'
      ),
      Product(
        category: Category.home,
        id: 17,
        isFeatured: false,
        name: 'Quartet table',
        price: 175,
        description: 'Compact yet impactful, the Quartet Table makes a statement with its minimalist silhouette and natural wood finish. Designed with four tapered legs and a smooth square top, this table is ideal as a side table, nightstand, or coffee corner. Durable, lightweight, and easy to assemble.'
      ),
      Product(
        category: Category.home,
        id: 18,
        isFeatured: true,
        name: 'Kitchen quattro',
        price: 129,
        description: 'The Kitchen Quattro is your all-in-one culinary companion. This 4-piece set includes a spatula, slotted spoon, ladle, and tongs—all heat-resistant and made from BPA-free silicone. Handles are designed for comfort and grip, while the modern color palette blends beautifully with any kitchen setup.'
      ),
      Product(
        category: Category.clothing,
        id: 19,
        isFeatured: false,
        name: 'Clay sweater',
        price: 48,
        description: 'Cozy up in the Clay Sweater—a relaxed-fit pullover made from soft rib-knit fabric. Features include a crew neckline, dropped shoulders, and a slightly cropped hem for a modern silhouette. Perfect for layering or wearing on its own, this sweater combines comfort with style effortlessly.'
      ),
      Product(
        category: Category.clothing,
        id: 20,
        isFeatured: false,
        name: 'Sea tunic',
        price: 45,
        description: 'The Sea Tunic is your go-to for breezy, effortless fashion. Designed with lightweight fabric, a loose silhouette, and a side-slit hem, it flatters all body types while keeping you cool and chic. Wear it solo as a beach cover-up or pair it with leggings for a casual day out.'
      ),
      Product(
        category: Category.clothing,
        id: 21,
        isFeatured: false,
        name: 'Plaster tunic',
        price: 38,
        description: 'The Plaster Tunic blends minimalism with comfort. Featuring a high-low hem and boxy cut, it\'s made from soft jersey cotton that drapes beautifully on the body. A versatile wardrobe piece that transitions seamlessly from loungewear to brunch wear.'

      ),
      Product(
        category: Category.clothing,
        id: 22,
        isFeatured: false,
        name: 'White pinstripe shirt',
        price: 70,
        description: 'Crisp, clean, and tailored to perfection. The White Pinstripe Shirt features a classic button-down front, pointed collar, and slim vertical stripes that elongate your silhouette. Ideal for workdays or weekend layering—pair it with trousers or tuck it into jeans for effortless chic.'
      ),
      Product(
        category: Category.clothing,
        id: 23,
        isFeatured: false,
        name: 'Chambray shirt',
        price: 70,
        description: 'Your go-to denim alternative. This soft, lightweight Chambray Shirt offers a relaxed fit with a faded wash, rolled sleeves, and front chest pockets. Whether worn open over a tee or buttoned up with slacks, it’s a timeless layering piece with laid-back charm.'

      ),
      Product(
        category: Category.clothing,
        id: 24,
        isFeatured: true,
        name: 'Seabreeze sweater',
        price: 60,
        description: 'Stay cozy and cool with the Seabreeze Sweater. Designed with a ribbed crewneck, breathable weave, and subtle drop-shoulder seams. Lightweight enough for spring, warm enough for autumn—this is your sweater-weather essential.'
      ),
      Product(
        category: Category.clothing,
        id: 25,
        isFeatured: false,
        name: 'Gentry jacket',
        price: 178,
        description: 'Meet your outerwear upgrade. The Gentry Jacket features a tailored silhouette with a structured collar, front button closure, and deep side pockets. Crafted from luxe wool-blend fabric that layers beautifully over any outfit. Smart, sophisticated, and undeniably stylish.'
      ),
      Product(
        category: Category.clothing,
        id: 26,
        isFeatured: false,
        name: 'Navy trousers',
        price: 74,
        description: 'These Navy Trousers redefine smart-casual. With a tapered leg, flat front, and soft stretch fabric, they provide all-day comfort without compromising style. Pair them with oxfords for work or sneakers for the weekend.'
      ),
      Product(
        category: Category.clothing,
        id: 27,
        isFeatured: true,
        name: 'Walter henley (white)',
        price: 38,
        description: 'Simple yet standout. The Walter Henley in crisp white features a three-button placket, ribbed neckline, and soft cotton construction. It\'s the ultimate basic—perfect for layering or rocking solo with your favorite denim.'
      ),
      Product(
        category: Category.clothing,
        id: 28,
        isFeatured: true,
        name: 'Surf and perf shirt',
        price: 48,
        description: 'The name says it all—casual surf vibes meet sharp performance style. Made from breathable moisture-wicking fabric, this button-down is ideal for warm days and weekend hangs. Lightweight and wrinkle-resistant for grab-and-go wear.'
      ),
      Product(
        category: Category.clothing,
        id: 29,
        isFeatured: true,
        name: 'Ginger scarf',
        price: 98,
        description: 'Wrap yourself in luxury with the Ginger Scarf. Crafted from ultra-soft brushed wool, it features warm amber tones and fringed edges. Oversized for a cozy drape—perfect for layering over jackets or styling with a sweater dress.',
      ),
      Product(
        category: Category.clothing,
        id: 30,
        isFeatured: true,
        name: 'Ramona crossover',
        price: 68,
        description: 'Practical meets pretty with the Ramona Crossover. Featuring an adjustable strap, gold-tone hardware, and multiple compartments for organization. Sleek, structured, and perfectly sized for everyday errands or a night on the town.',
      ),
      Product(
        category: Category.clothing,
        id: 31,
        isFeatured: false,
        name: 'Chambray shirt',
        price: 38,
        description: 'A versatile essential you’ll wear on repeat. This lighter wash version of the Chambray Shirt boasts a casual collar, relaxed fit, and soft brushed finish. Whether tied around the waist or tucked in—it always delivers.',
      ),
      Product(
        category: Category.clothing,
        id: 32,
        isFeatured: false,
        name: 'Classic white collar',
        price: 58,
        description: 'The Classic White Collar is your closet’s MVP. Featuring crisp tailoring, pleated cuff detail, and a flattering silhouette that pairs effortlessly with everything from skirts to suits. Elegant, timeless, and endlessly re-wearable.',
      ),
      Product(
        category: Category.clothing,
        id: 33,
        isFeatured: true,
        name: 'Cerise scallop tee',
        price: 42,
        description: 'Add some sweetness to your style with the Cerise Scallop Tee. This soft jersey tee features a delicate scalloped hem and sleeves, plus a flattering boat neckline. Easy to dress up or down—it’s flirty, fun, and feminine.',
      ),
      Product(
        category: Category.clothing,
        id: 34,
        isFeatured: false,
        name: 'Shoulder rolls tee',
        price: 27,
        description: 'Casual, cool, and just a little edgy. The Shoulder Rolls Tee is designed with extended sleeves that roll up for a relaxed silhouette. Lightweight cotton and a slightly oversized fit make this your new go-to for laid-back days.',
      ),
      Product(
        category: Category.clothing,
        id: 35,
        isFeatured: false,
        name: 'Grey slouch tank',
        price: 24,
        description: 'Minimalist and effortlessly modern. The Grey Slouch Tank has a scoop neck, dropped armholes, and a drapey fit that looks great with joggers or tucked into high-waisted denim. Layer it up or wear it solo—this one does it all.',
      ),
      Product(
        category: Category.clothing,
        id: 36,
        isFeatured: false,
        name: 'Sunshirt dress',
        price: 58,
        description: 'Sunny day style starts here. The Sunshirt Dress features breathable cotton, a shirt-dress silhouette with buttons down the front, a detachable waist tie, and short sleeves. Simple, flattering, and sunshine-approved.',
      ),
      Product(
        category: Category.clothing,
        id: 37,
        isFeatured: true,
        name: 'Fine lines tee',
        price: 58,
        description: 'Subtle details make a big impact in the Fine Lines Tee. Designed with thin pinstripes, a ribbed neckline, and a softly structured fit. Smart enough for under a blazer, relaxed enough for solo wear—your favorite new basic just got elevated.',
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}

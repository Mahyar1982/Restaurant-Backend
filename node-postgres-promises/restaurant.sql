DROP DATABASE IF EXISTS brand;
CREATE DATABASE brand;

\c brand

CREATE TABLE customers (
  ID SERIAL PRIMARY KEY,
  customer_name VARCHAR,
  customer_firstname VARCHAR,
  customer_lastname VARCHAR,
  customer_email VARCHAR default null,
  customer_phone VARCHAR default null,
  customer_recieve_email VARCHAR default null
);

CREATE TABLE reservations (
  ID SERIAL PRIMARY KEY,
  reservation_time VARCHAR,
  reservation_table VARCHAR
);

CREATE TABLE restaurants (
  ID SERIAL PRIMARY KEY,
  restaurant_name VARCHAR,
  restaurant_address VARCHAR,
  restaurant_phone_one VARCHAR default null,
  restaurant_phone_two VARCHAR default null,
  restaurant_image_url_one VARCHAR default null,
  restaurant_image_url_two VARCHAR default null,
  restaurant_image_url_three VARCHAR default null,
  restaurant_image_url_four VARCHAR default null
);

CREATE TABLE foods_fi (
  ID SERIAL PRIMARY KEY,
  food_type VARCHAR,
  food_category VARCHAR,
  food_subcategory VARCHAR,
  food_name VARCHAR,
  food_price VARCHAR,
  food_price_off VARCHAR,
  food_short_description VARCHAR default null,
  food_description VARCHAR default null,
  food_ingredients VARCHAR,
  food_nutrition VARCHAR default null,
  food_image_url_one VARCHAR default null,
  food_image_url_two VARCHAR default null
);

CREATE TABLE foods_en (
  ID SERIAL PRIMARY KEY,
  food_type VARCHAR,
  food_category VARCHAR,
  food_subcategory VARCHAR,
  food_name VARCHAR,
  food_price VARCHAR,
  food_price_off VARCHAR,
  food_short_description VARCHAR default null,
  food_description VARCHAR default null,
  food_ingredients VARCHAR,
  food_nutrition VARCHAR default null,
  food_image_url_one VARCHAR default null,
  food_image_url_two VARCHAR default null
);

CREATE TABLE restaurant_menu_fi (
  ID SERIAL PRIMARY KEY,
  restaurant_menu_name VARCHAR,
  restaurant_menu_description_one VARCHAR default null,
  restaurant_menu_description_two VARCHAR default null,
  restaurant_menu_image_url_one VARCHAR default null,
  restaurant_menu_image_url_two VARCHAR default null
    );

CREATE TABLE restaurant_menu_en (
  ID SERIAL PRIMARY KEY,
  restaurant_menu_name VARCHAR,
  restaurant_menu_description_one VARCHAR default null,
  restaurant_menu_description_two VARCHAR default null,
  restaurant_menu_image_url_one VARCHAR default null,
  restaurant_menu_image_url_two VARCHAR default null
    );

INSERT INTO foods_fi (food_type, food_category, food_subcategory, food_name, food_price, food_price_off, food_short_description, food_description, food_ingredients, food_nutrition, food_image_url_one, food_image_url_two)
VALUES
-- 1
        ('Lounaslista', 'Maanantai', '1', 'TEXMEX', '8.90', '7.40', 'Jauhelikeitto ja salaattipöytä', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('Lounaslista', 'TIISTAI', '2', 'TEXMEX', '8.90', '7.30', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('Lounaslista', 'Torstai', '4', 'TEXMEX', '8.90', '6.50', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('Lounaslista', 'MAANANTAI', '1', 'TEXMEX', '8.90', '7.20', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 2
        ('Lounaslista', 'Torstai', '4', 'TEXMEX', '8.90', '6.50', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('Lounaslista', 'MAANANTAI', '1', 'TEXMEX', '8.90', '7.20', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 2
        ('AMARILLO A LA CARTE', 'MAD MEX', '', 'MINI STARTER SAMPLER', '6.40', '5.20', '', 'Klassikko! Kotimaisen kananpojan jättisiipiä valintasi mukaan joko Texas Pete -kastikkeessa, limekorianterikastikkeessa tai savunaga-BBQkastikkeessa. Tarjoillaan coleslawn ja crème fraîchen kanssa.', 'Kinkku', 'TU, G, VL', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/MINI_STARTER_SAMPLE1.jpg?alt=media&token=e9632313-2011-4e08-b1e8-12a690019615', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/MINI_STARTER_SAMPLE2.jpg?alt=media&token=02da5b04-81cf-4fba-9793-cd47fc50ce99'),
-- 3
        ('AMARILLO A LA CARTE', 'CLASSICS', '', 'TEXAS GRILL STEAK', '24.70', '23.20', '', 'Naudan ulkofileepihvi, chorizo-maustevoita, coleslawta ja pariloitu maissintähkä. Ranskalaisia perunoita.', '', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texas_grill_steak1.jpg?alt=media&token=8b777c37-efdd-4719-809e-5bc38ab6a170', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texas_grill_steak2.jpg?alt=media&token=86ccbc28-e1c1-4589-8e32-83e3d1d1cbce'),
-- 4
        ('Asiakasomistajaviinit', 'KAUDEN ASIAKASOMISTAJAN VIINIT', '', 'GATO NEGRO NINE LIVES RESERVE', '19.95', '18.00', 'Cabernet Sauvignon', 'Rubiininpunainen, kypsän hedelmäinen ja pehmeän tanniininen viini on tulvillaan mansikkaa ja kirsikkaa. Hedelmäiset maut sulautuvat pehmeästi pippurin, mustan teen ja vaniljan sävyihin. Sopii mainiosti grillatun ruoan, punaisen lihan ja kypsien juustojen makua korostamaan.', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/GATO_NEGRO_NINE_LIVES_RESERVE1.jpeg?alt=media&token=7c08709e-5b37-4863-903a-b4a62343d0f7', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/GATO_NEGRO_NINE_LIVES_RESERVE2.jpg?alt=media&token=6583b1b5-f52f-4911-aa97-84dff2aa1921'),
-- 5
        ('Amarillo juomalista', 'COLD DRINKS', '', 'CORONA', '6.70', '5.40', '0,355 • 4,5 %', 'Kevyt, sitrusmainen ja erittäin raikas lagerolut.', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/CORONA1.jpg?alt=media&token=6e765674-2364-4418-afef-151b538438ee', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/CORONA2.jpg?alt=media&token=4ab5a9e6-f2bc-4a74-897d-b403740ddd08'),
-- 6
        ('Amarillo juomalista', 'COLD DRINKS', '', 'BROOKLYN AMERICAN ALE', '6.70', '5.70', '0,355 • 4,5 %', 'Brittityylinen miellyttävän kevyt jenkkiolut, joka sopii ruoan kylkeen tai sellaisenaan.', '', '' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/BROOKLYN_AMERICAN_ALE1.jpg?alt=media&token=807a4921-9266-4c54-bf31-949960542ce6', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/BROOKLYN_AMERICAN_ALE2.jpg?alt=media&token=3edd4d92-8b61-41d4-a72b-5f1be5ca4702');

INSERT INTO foods_en (food_type, food_category, food_subcategory, food_name, food_price, food_price_off, food_short_description, food_description, food_ingredients, food_nutrition, food_image_url_one, food_image_url_two)
VALUES
-- 1
        ('Lunch', 'Monday', '1', 'Sweetcord soup and salad table', '9.40', '7.40', 'Build a friend of yours to our tasty soup with a rich salad table from a fresh selection.', '', 'Sweetcorn, potato, British chicken, onion, cow milk', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/sweetcord_soup_and_salad_table.JPG?alt=media&token=f766d394-bb78-44a0-a1d2-56d5e208e446', ''),
-- 1
        ('Lunch', 'Monday', '1', 'Roast and sacory sauce', '12.90', '7.30', 'Roasted roast beefsteak, casserole, chicken smoked sauce and blackened potato potato.', '', 'Beef, gralic, bleck pepper, tomato', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Roast%20and%20sacory%20sauce.JPG?alt=media&token=3d70f4db-3e70-4960-8653-f2d1a2518a9d', ''),
-- 1
        ('Lunch', 'Tuesday', '2', 'Mexican chicken soup and salad table', '9.40', '6.50', 'Build a friend of yours to our tasty soup with a rich salad table from a fresh selection.', '', 'Chicken, diced tomatoes, chopped carrot, onion, bell pepper', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Mexican%20chicken%20soup%20and%20salad%20table.JPG?alt=media&token=45af5882-95e1-4d68-88ea-9ded0376b837', ''),
-- 1
        ('Lunch', 'Tuesday', '2', 'Burger', '9.90', '7.20', '', '', 'Egg, ground beef, fresh herb, onion', 'VL', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/burger.JPG?alt=media&token=993990ba-4eeb-482d-9d8e-02d08a2986d9', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 2
        ('Lunch', 'Wednesday', '3', 'Onion-pepper soup and salad table', '9.40', '6.50', 'Build a friend of yours to our tasty soup with a rich salad table from a fresh selection.', '', 'Onion, pepper, tomato, paprika', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Onion-pepper%20soup%20and%20salad%20table.JPG?alt=media&token=a5423ab4-3fc7-475c-8741-63a42d291301', ''),
-- 1
        ('Lunch', 'Wednesday', '3', 'Goat cheeseburger', '9.90', '7.20', 'Grilled goat cheese and devil sauce with crunchy french fries.', '', 'Groung goat, onion, rosemary, cumin, olive oil', 'VL', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/goat%20cheeseburger.JPG?alt=media&token=e5f6d570-51f7-4f3c-a685-d258bd7f1533', ''),
-- 2
        ('Lunch', 'Thursday', '4', 'Salmon soup and salad table', '9.40', '5.20', 'Build a friend of yours to our tasty soup with a rich salad table from a fresh selection.', '', 'Salmon, leeks, garlic, coconut milk', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Salmon%20soup.JPG?alt=media&token=25d49c6b-3534-42e2-9e70-25acee69f4ac', ''),
-- 3
        ('Lunch', 'Thursday', '4', 'Chicken with sauce', '12.90', '23.20', '', '', 'Grilled chicken, roasted bell peppers and pies', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/chicken%20with%20sauce.JPG?alt=media&token=e70c0d64-681b-4b5b-9d79-8074c09eb5b2', ''),
-- 4
        ('Lunch', 'Friday', '5', 'Chicken burger', '9.90', '18.00', 'BBQ sauce, crispy lettuce in mayonnaise with crunchy french fries.', '', 'Chicken, tomato, red onion, lettuce', 'L', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/chicken%20with%20sauce.JPG?alt=media&token=e70c0d64-681b-4b5b-9d79-8074c09eb5b2', ''),
-- 5
        ('Lunch', 'Friday', '5', 'Salmon with salsa sause', '12.90', '5.40', 'Roasted fried salmon, roasted bell peppers and pies.', '', 'Salmon, onion, bell pepper, potato', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/salmon%20with%20salsa%20sauce.JPG?alt=media&token=629c6710-be60-4604-a653-7744fa391cf5', ''),
-- 6
        ('Special Foods', 'Classics', '1', 'Garlic chicken', '17.20', '5.40', '', '', 'chicken, coleslaw, garlic, potato', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/garlic%20chicken.JPG?alt=media&token=d17ee6a4-2261-4ba6-a0e9-5355ac7a1b07', ''),

        ('Special Foods', 'Special', '2', 'Texas chicken', '18.20', '5.40', 'Chicken breast and cheddar cheese sauce. American Style fries.', '', 'Chicken, potato, tomato', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texican%20chicken.JPG?alt=media&token=d1e4b3c6-58de-4617-8e47-1f64ea45701c', ''),

        ('Special Foods', 'Special', '2', 'Flank Steak', '29.90', '5.40', 'Peppered flank steak and pepper sauce with potatoes.', '', 'Beef, corn, butter, potato', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/flank%20steak.JPG?alt=media&token=a6a88e73-2b99-4dae-a870-19ef03f1e545', ''),

        ('Special Foods', 'Sweets', '3', 'Cheese Cake', '7.30', '5.40', 'Home baked cheese cake. serve with a mango slice', '', '', 'L', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/cheese%20cake.JPG?alt=media&token=8fd99497-1ec8-47b7-b21c-f097c330a6dc', ''),

        ('Special Foods', 'Sweets', '3', 'Brownie', '7.80', '5.40', 'Warm and nutty chocolate brownie. Vanilla ice cream and chocolate sauce.', '', '', 'L, M', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/brownie.JPG?alt=media&token=4d2ece60-5bae-4e45-bcca-b7d5720e1e98', ''),

        ('Special Foods', 'Kids menu', '4', 'kids meatballs', '8.90', '5.40', 'Meatballs and French fries. Served with tomato, lettuce and mayonnaise.', '', '', 'L,G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/kids%20meatballs.JPG?alt=media&token=1cce860d-3ff7-4b25-8405-814c97378408', ''),

        ('Special Foods', 'Kids menu', '4', 'Kids Chicken', '8.90', '5.40', 'Chicken breast and French fries. Served with lettuce, tomato and mayonnaise', '', '', 'L, G', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/kids%20chicken.JPG?alt=media&token=051778c9-d675-47c4-8301-0b7f550fa561', ''),

        ('Special Foods', 'Classics', '1', 'Texas grill steak', '24.70', '5.70', 'Beef steak with french fries', '', 'Beef, corn, butter, potato', 'L, G' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/grilled%20steak.JPG?alt=media&token=8aeeae94-c372-4406-9618-3a8861608cb1', ''),

        ('Wines', '', '', 'Gato negro nine lives reserve', '19.95', '5.40', 'This ruby red wine with soft tannins and a note of ripe fruit is full of strawberry and cherry.', '', 'We recommend this wine with low-fat fish, shellfish, salads and mild cheeses.', '75 cl', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/gato%20wine.JPG?alt=media&token=39a92e31-9e0e-4f32-a7d8-f0865c485f63', ''),

        ('Wines', '', '', 'Nederburg 1791 Rose', '19.95', '5.70', 'South African Nederburg offers this pink, fresh and fruity rosé.', '', ' it is an excellent accompaniment with smoked salmon, fresh salads and vegetarian dishes.', '75 cl' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/nederburg.JPG?alt=media&token=45edc7ad-7333-4263-856c-afdbe98f9698', ''),

        ('Wines', '', '', 'Carrington vintage brut', '19.95', '5.40', 'If you enjoy bubbles, Australian Carrington is an elegant choice.', '', 'It is an excellent accompaniment with full salads, fish, shellfish and light meat.', '75 cl', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/carrington%20wine.JPG?alt=media&token=bba57225-91ed-4ec1-a7eb-ec3ed432671e', ''),

        ('Wines', '', '', 'Nicolas fueillatte brut', '39.95', '5.70', 'Nicolas Feuillatte Champagne is undoubtedly the elegant queen of the wine range.', '', 'It is excellent as an aperitif, on its own or even throughout the meal.', '75 cl' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/nicolas%20wine.JPG?alt=media&token=db96cc00-e9e1-472c-9a65-9b0d4e04ff3d', ''),

        ('Drinks', '', '', 'Corona', '6.70', '5.40', 'A light, citrusy and fresh lager.', '', '', '0,355 * 4,5 %', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Corona.JPG?alt=media&token=5eddfb2d-7394-4eca-8a90-6f21243b9c9b', ''),

        ('Drinks', '', '', 'Brooklyn American', '6.70', '5.70', 'A light American ale with a British touch. Works with or without a meal.', '', '', '0,355 * 4,5 %' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/brooklyn.JPG?alt=media&token=d9fdadad-b2ae-45a4-aa37-6a4356ac42cd', ''),

        ('Drinks', '', '', 'Brooklyn scorcher ipa', '6.70', '5.40', 'A smooth, fresh and light golden pale ale.', '', '', '0,355 * 4,5 %', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/Scorcher.JPG?alt=media&token=6da474ab-e8e5-4484-9683-37af8b960540', ''),

        ('Drinks', '', '', 'Koff crisp lager', '3.5', '5.70', 'The most popular non-alcoholic beer in Finland.', '', '', '0,33 * 0,0 %' , 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/koff.JPG?alt=media&token=87da47fc-7a94-4b43-afd6-1a536c9e79df', '');


INSERT INTO restaurant_menu_fi (restaurant_menu_name, restaurant_menu_description_one, restaurant_menu_description_two, restaurant_menu_image_url_one, restaurant_menu_image_url_two)
    VALUES
    -- 1
            ('Lounaslista', 'Tässä on suosittu lounaspaikka Lahdessa.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_one.jpg?alt=media&token=5013deaa-bcec-4fcc-9869-6c60acdfce41', ''),
    -- 2
            ('Suositusmenut', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_two.jpg?alt=media&token=841f7d44-2569-43fc-8612-7de983a09696', ''),
    -- 3
            ('Viinit', 'Kaikki muu kuin viini on hyödytöntä. Haluamme vain tarjota asiakkaillemme parasta.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_three.jpg?alt=media&token=b5cf43b5-ffb1-44fd-9bce-a2f821f38da9', ''),
    -- 4
            ('Joumat', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_four.jpg?alt=media&token=77a879fa-29ea-439e-a00d-a2483925a105', '');

INSERT INTO restaurant_menu_en (restaurant_menu_name, restaurant_menu_description_one, restaurant_menu_description_two, restaurant_menu_image_url_one, restaurant_menu_image_url_two)
   VALUES
    -- 1
            ('Lunch', 'Here is a popular business lunch destination in Lahti.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_one.jpg?alt=media&token=5013deaa-bcec-4fcc-9869-6c60acdfce41', ''),
    -- 2
            ('Special Foods', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_two.jpg?alt=media&token=841f7d44-2569-43fc-8612-7de983a09696', ''),
    -- 3
            ('Wines', 'Everything else except wine is useless. We only want to offer our customers the best.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_three.jpg?alt=media&token=b5cf43b5-ffb1-44fd-9bce-a2f821f38da9', ''),
    -- 4
            ('Drinks', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_four.jpg?alt=media&token=77a879fa-29ea-439e-a00d-a2483925a105', '');

  -- CREATE TABLE food_order (
  --   ID SERIAL PRIMARY KEY,
  --   food_order_number VARCHAR,
  --   food_order_name VARCHAR,
  --   food_order_quantity INTEGER,
  --   food_order_email VARCHAR default null,
  --   food_order_phone VARCHAR default null,
  --   food_order_address VARCHAR default null
  --               );

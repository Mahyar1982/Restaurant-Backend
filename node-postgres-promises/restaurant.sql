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

CREATE TABLE foods (
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
  food_nutrition_one VARCHAR default null,
  food_nutrition_two VARCHAR default null,
  food_nutrition_three VARCHAR default null,
  food_nutrition_four VARCHAR default null,
  food_image_url_one VARCHAR default null,
  food_image_url_two VARCHAR default null
);

CREATE TABLE restaurant_menu (
  ID SERIAL PRIMARY KEY,
  restaurant_menu_name VARCHAR,
  restaurant_menu_description_one VARCHAR default null,
  restaurant_menu_description_two VARCHAR default null,
  restaurant_menu_image_url_one VARCHAR default null,
  restaurant_menu_image_url_two VARCHAR default null
    );

INSERT INTO foods (food_type, food_category, food_subcategory, food_name, food_price, food_price_off, food_short_description, food_description, food_ingredients, food_nutrition_one, food_nutrition_two, food_nutrition_three, food_nutrition_four, food_image_url_one, food_image_url_two)
VALUES
-- 1
        ('LOUNASLISTA', 'MAANANTAI', '1', 'TEXMEX', '8.90', '7.40', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, ', 'G ', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('LOUNASLISTA', 'TIISTAI', '2', 'TEXMEX', '8.90', '7.30', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, ', 'G ', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('LOUNASLISTA', 'Torstai', '4', 'TEXMEX', '8.90', '6.50', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, ', 'G ', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 1
        ('LOUNASLISTA', 'MAANANTAI', '1', 'TEXMEX', '8.90', '7.20', 'JAUHELIHAKEITTO JA SALAATTIPÖYTÄ', 'Rakenna mieleisesi kaveri maukkaalle keitollemme runsaan salaattipöydän aina tuoreesta valikoimasta.', 'Ananas, Kinkku, Majoneesi, Kebabliha', 'L, ', 'G ', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex1.jpg?alt=media&token=47b01181-4772-4f62-8cda-a451986be981', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texmex2.jpg?alt=media&token=bf62d59b-fdb4-45af-91ab-f9c7eeeecd4a'),
-- 2
        ('AMARILLO A LA CARTE', 'MAD MEX', '', 'MINI STARTER SAMPLER', '6.40', '5.20', '', 'Klassikko! Kotimaisen kananpojan jättisiipiä valintasi mukaan joko Texas Pete -kastikkeessa, limekorianterikastikkeessa tai savunaga-BBQkastikkeessa. Tarjoillaan coleslawn ja crème fraîchen kanssa.', 'Kinkku', 'TU, ', 'G, ', 'VL ', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/MINI_STARTER_SAMPLE1.jpg?alt=media&token=e9632313-2011-4e08-b1e8-12a690019615', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/MINI_STARTER_SAMPLE2.jpg?alt=media&token=02da5b04-81cf-4fba-9793-cd47fc50ce99'),
-- 3
        ('AMARILLO A LA CARTE', 'CLASSICS', '', 'TEXAS GRILL STEAK', '24.70', '23.20', '', 'Naudan ulkofileepihvi, chorizo-maustevoita, coleslawta ja pariloitu maissintähkä. Ranskalaisia perunoita.', '', 'L, ', 'G ', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texas_grill_steak1.jpg?alt=media&token=8b777c37-efdd-4719-809e-5bc38ab6a170', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/texas_grill_steak2.jpg?alt=media&token=86ccbc28-e1c1-4589-8e32-83e3d1d1cbce'),
-- 4
        ('Asiakasomistajaviinit', 'KAUDEN ASIAKASOMISTAJAN VIINIT', '', 'GATO NEGRO NINE LIVES RESERVE', '19.95', '18.00', 'Cabernet Sauvignon', 'Rubiininpunainen, kypsän hedelmäinen ja pehmeän tanniininen viini on tulvillaan mansikkaa ja kirsikkaa. Hedelmäiset maut sulautuvat pehmeästi pippurin, mustan teen ja vaniljan sävyihin. Sopii mainiosti grillatun ruoan, punaisen lihan ja kypsien juustojen makua korostamaan.', '', '', '', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/GATO_NEGRO_NINE_LIVES_RESERVE1.jpeg?alt=media&token=7c08709e-5b37-4863-903a-b4a62343d0f7', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/GATO_NEGRO_NINE_LIVES_RESERVE2.jpg?alt=media&token=6583b1b5-f52f-4911-aa97-84dff2aa1921'),
-- 5
        ('Amarillo juomalista', 'COLD DRINKS', '', 'CORONA', '6.70', '5.40', '0,355 • 4,5 %', 'Kevyt, sitrusmainen ja erittäin raikas lagerolut.', '', '', '', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/CORONA1.jpg?alt=media&token=6e765674-2364-4418-afef-151b538438ee', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/CORONA2.jpg?alt=media&token=4ab5a9e6-f2bc-4a74-897d-b403740ddd08'),
-- 6
        ('Amarillo juomalista', 'COLD DRINKS', '', 'BROOKLYN AMERICAN ALE', '6.70', '5.70', '0,355 • 4,5 %', 'Brittityylinen miellyttävän kevyt jenkkiolut, joka sopii ruoan kylkeen tai sellaisenaan.', '', '', '', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/BROOKLYN_AMERICAN_ALE1.jpg?alt=media&token=807a4921-9266-4c54-bf31-949960542ce6', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/BROOKLYN_AMERICAN_ALE2.jpg?alt=media&token=3edd4d92-8b61-41d4-a72b-5f1be5ca4702');


INSERT INTO restaurant_menu (restaurant_menu_name, restaurant_menu_description_one, restaurant_menu_description_two, restaurant_menu_image_url_one, restaurant_menu_image_url_two)
    VALUES
    -- 1
            ('LOUNASLISTA', 'Our lunch includes a rich and fresh salad buffet, as well as a daily changing soup.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_one.jpg?alt=media&token=5013deaa-bcec-4fcc-9869-6c60acdfce41', ''),
    -- 2
            ('AMARILLO A LA CARTE', 'Our lunch includes a rich and fresh salad buffet, as well as a daily changing soup.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_two.jpg?alt=media&token=841f7d44-2569-43fc-8612-7de983a09696', ''),
    -- 3
            ('Asiakasomistajaviinit', 'Everything else except wine is useless. We only want to offer our customers the best.', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_three.jpg?alt=media&token=b5cf43b5-ffb1-44fd-9bce-a2f821f38da9', ''),
    -- 4
            ('Amarillo juomalista', '', '', 'https://firebasestorage.googleapis.com/v0/b/restaurantsample-8a54d.appspot.com/o/menu_four.jpg?alt=media&token=77a879fa-29ea-439e-a00d-a2483925a105', '');

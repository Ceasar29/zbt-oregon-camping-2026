DROP TABLE IF EXISTS signup_items;

CREATE TABLE signup_items (
  id TEXT PRIMARY KEY,
  category TEXT NOT NULL,
  item TEXT NOT NULL,
  detail TEXT NOT NULL DEFAULT '',
  claimed_by TEXT NOT NULL DEFAULT '',
  sort_order INTEGER NOT NULL,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO signup_items (id, category, item, detail, claimed_by, sort_order) VALUES
('costco_run', 'costco', 'Costco bulk run - food, drinks, ice, and paper supplies', 'Jason, David, and Squiggles are getting the Costco food/drinks/supplies run, including 4 cases of water and plates/bowls/forks/knives/spoons. Individual veggies/snacks/drinks do not need separate claims.', 'Jason, David, Squiggles', 10),
('friday_sausages', 'costco', 'Friday dinner sausages', 'Pinky will pick these up from the butcher in Napa before he leaves.', 'Pinky', 20),
('gear_grill_1', 'gear', 'Propane grill with gas #1', 'Elgin is bringing one propane grill with gas.', 'Elgin', 10),
('gear_grill_2', 'gear', 'Propane grill with gas #2', 'Need one more propane grill with gas.', '', 20),
('gear_cooler_1', 'gear', 'Cooler / ice chest #1', 'Elgin is bringing one small cooler.', 'Elgin - small cooler', 30),
('gear_cooler_2', 'gear', 'Cooler / ice chest #2', 'Medium preferred if possible.', '', 40),
('gear_cooler_3', 'gear', 'Cooler / ice chest #3', 'Medium preferred if possible.', '', 50),
('gear_cooler_4', 'gear', 'Cooler / ice chest #4', 'Extra cooler slot if needed.', '', 60),
('gear_food_bins', 'gear', 'Hard-sided food bins', 'For shared food storage; do not leave food in tents.', '', 70),
('gear_cooking_tools', 'gear', 'Cooking tools', 'Spatula, tongs, knife, cutting board, foil, serving tools.', '', 80),
('gear_serving_utensils_1', 'gear', 'Serving utensils #1', 'Big spoon, tongs, serving knife, opener, or similar shared kitchen tools.', '', 90),
('gear_serving_utensils_2', 'gear', 'Serving utensils #2', 'Second slot in case someone else has a useful set.', '', 100),
('gear_lighting', 'gear', 'Lantern / shared camp lights', 'Everybody can bring their own lights, but one shared lantern/camp-light setup would help.', '', 110),
('gear_wash', 'gear', 'Dish soap + sponge', 'Shared kitchen cleanup.', '', 120),
('game_cornhole', 'games', 'Corn hole', 'Claim if you can bring it.', '', 10),
('game_ladder', 'games', 'Ladder toss', 'Claim if you can bring it.', '', 20),
('game_dominoes', 'games', 'Dominoes', 'Claim if you can bring it.', '', 30),
('game_cards', 'games', 'Deck of cards', 'Claim if you can bring it.', '', 40),
('game_other', 'games', 'Other game', 'Claim with your name and what game you are bringing.', '', 50);

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
('costco_run', 'costco', 'Costco bulk run - food, drinks, ice, and paper supplies', 'Elgin, Tex, Cody, Jason, David, and Squiggles are doing the Costco food/drinks/supplies run together, including 3 cases of water, 1 bag charcoal briquettes, and plates/bowls/forks/knives/spoons. Individual veggies/snacks/drinks do not need separate claims.', 'Elgin, Tex, Cody, Jason, David, Squiggles', 10),
('friday_sausages', 'costco', 'Friday dinner sausages', 'Pinky will pick these up from the butcher in Napa before he leaves.', 'Pinky', 20),
('edibles', 'costco', 'Edibles', 'Elgin is bringing these.', 'Elgin', 30),
('gear_grill_1', 'gear', 'Propane grill with gas', 'Elgin is bringing a grill and propane.', 'Elgin', 10),
('gear_grill_2', 'gear', 'Cooking stove with propane', 'Tex is bringing a cooking stove and propane.', 'Tex', 20),
('gear_cooler_1', 'gear', 'Cooler / ice chest #1', 'Elgin is bringing one cooler.', 'Elgin', 30),
('gear_cooler_2', 'gear', 'Cooler / ice chest #2', 'Pinky is bringing one cooler.', 'Pinky', 40),
('gear_cooler_3', 'gear', 'Cooler / ice chest #3', 'Pinky is bringing a second cooler.', 'Pinky', 50),
('gear_cooler_4', 'gear', 'Cooler / ice chest #4', 'Tex is bringing one cooler.', 'Tex', 60),
('gear_food_bins', 'gear', 'Hard-sided food bins', 'For shared food storage; do not leave food in tents.', '', 70),
('gear_cooking_tools', 'gear', 'Cooking utensils', 'Pinky is bringing pots, spatulas, grill tongs, salad tongs, and pans.', 'Pinky', 80),
('gear_serving_utensils_1', 'gear', 'Serving utensils', 'Pinky is bringing serving utensils: big spoons, tongs, serving knife, opener, and similar shared kitchen tools.', 'Pinky', 90),
('gear_lighting', 'gear', 'Lantern / shared camp lights', 'Everybody can bring their own lights, but one shared lantern/camp-light setup would help.', '', 110),
('gear_wash', 'gear', 'Dish soap + sponge', 'Pinky is bringing these for shared kitchen cleanup.', 'Pinky', 120),
('gear_toilet_paper', 'gear', 'Toilet paper', 'Pinky / Jason is bringing this.', 'Pinky', 130),
('game_cornhole', 'games', 'Corn hole', 'Claim if you can bring it.', '', 10),
('game_ladder', 'games', 'Ladder ball', 'Pinky is bringing this.', 'Pinky', 20),
('game_dominoes', 'games', 'Dominoes', 'Pinky is bringing this.', 'Pinky', 30),
('game_cards', 'games', 'Deck of cards', 'Pinky is bringing this.', 'Pinky', 40),
('game_other', 'games', 'Other game', 'Claim with your name and what game you are bringing.', '', 50);

# Fragmented-ITCS-4230
Game Project created as part of the ITCS 4230 - Intro to Game Design course at UNC Charlotte

Created By: Micah Platte, Nicky Daggs, La’Mya Pearson, and Smriti Bhemireddy
Game Name: Fragmented

Game Instructions:
Start the game by clicking ‘PLAY’ on the main menu screen.
You will then start the game with a timer set to 3 minutes at the top of the screen. This is the total time you have to reach the end. If it reaches 0, you must restart the loop and start back at the beginning of the game.
Platform and navigate across several sections in the mind of the main character to find their lost memory.
Controls:
Move left and right using the Arrow Keys
Press Space to Jump
Press Z to interact with certain objects when prompted (NPCs, Doors, etc.)
When you unlock the Dash ability, press shift to dash while moving.
Set the game to fullscreen at any time by pressing ‘Alt’ + ‘F'
Try your best to beat the game as fast as possible!

Game Theme Implementation:
“Fragmented” implements the theme of Time Loop by giving the player a limited time to complete the game level and try to remember what they’ve forgotten. When the time runs out, the player is stuck in a loop and restarts the game level, now able to use their prior knowledge to get through it quicker.

Core Game Mechanic:
The core game mechanics in ‘Fragmented’ include running, jumping, and dashing to navigate the game level within the time restriction.

#########################################################################################################################################################

Graduate Requirements Descriptions:

The grayscale shader and the collectible glow make unnamed NPCs start washed out and make the bracelet and energy drink easier to find.

Grayscale shader

Unnamed NPCs start in grayscale and switch to full color when the player talks to them. Each of those NPCs begins with shaded = true. Their Draw event turns on shd_grayscale, draws the sprite, then resets the shader. Pressing Z to start dialogue sets shaded to false, so the same sprite draws in color.

The fragment shader reads the sprite color and turns it gray with standard luminance weights (0.299 red, 0.587 green, 0.114 blue). It keeps the original alpha, so transparent pixels stay transparent. The college NPC uses this too, because it inherits the child NPC’s Draw event.

Bracelet and energy drink glow

The bracelet and the energy drink share one particle script so they sparkle before they are picked up. On create, each object builds a particle system drawn just in front of the item. The particles are small white squares with additive blending. They fade out, drift upward, and last about 20 to 35 frames. A new particle spawns from the center of the sprite every four steps. When the item is collected, the particle system is destroyed with the instance.

Paths

The shadow moves along a closed path through the final area. The path is a loop, so when the shadow reaches the end it starts again from the beginning.

Spatial sound

The upper part of the main room uses its own audio emitter. The emitter has a falloff range, and its volume rises or falls based on how high and how far right the player is. The emitter is removed when that object is destroyed.

Views

The main room is larger than the screen, and views are turned on so the camera shows a 480 by 270 area inside a 1920 by 1080 window. The camera follows obj_viewFollow, which stays on the player.

Object inheritance

Child objects reuse a parent object’s events and then add their own. The college NPC inherits the child NPC, so it gets the grayscale drawing and the talk prompt, and only replaces the dialogue text. Platforms and floors inherit obj_testFloor, so the player collides with them the same way. The final door and the section doors inherit obj_college_iDoor for teleportation and interaction prompts. The credits, instructions, and exit buttons inherit obj_playButton.

Code location: 

Grayscale shader

Fragmented/shaders/shd_grayscale/shd_grayscale.fsh
Fragmented/shaders/shd_grayscale/shd_grayscale.vsh
Fragmented/objects/obj_NPC_Child/Draw_0.gml
Fragmented/objects/obj_NPC_Final/Draw_0.gml

Bracelet and energy drink glow

Fragmented/scripts/ItemGlow/ItemGlow.gml
Fragmented/objects/obj_bracelet/Create_0.gml
Fragmented/objects/obj_bracelet/Step_0.gml
Fragmented/objects/obj_bracelet/CleanUp_0.gml
Fragmented/objects/obj_energyDrink/Create_0.gml
Fragmented/objects/obj_energyDrink/Step_0.gml
Fragmented/objects/obj_energyDrink/CleanUp_0.gml

Paths

Fragmented/paths/path_shadow/path_shadow.yy
Fragmented/objects/obj_shadow/Create_0.gml
Fragmented/objects/obj_shadow/Step_0.gml

Spatial sound

Fragmented/objects/obj_dreamscapeMusic/Create_0.gml
Fragmented/objects/obj_dreamscapeMusic/Step_0.gml
Fragmented/objects/obj_dreamscapeMusic/CleanUp_0.gml

Views

Fragmented/rooms/MainRoomV2/MainRoomV2.yy
Fragmented/objects/obj_viewFollow/Step_0.gml

Object inheritance

Fragmented/objects/obj_NPC_College/obj_NPC_College.yy
Fragmented/objects/obj_NPC_Child/obj_NPC_Child.yy
Fragmented/objects/obj_testFloor/obj_testFloor.yy
Fragmented/objects/obj_college_iDoor/obj_college_iDoor.yy
Fragmented/objects/obj_playButton/obj_playButton.yy

#########################################################################################################################################################

Cheat Codes:
Give Player All Upgrades/Abilities
Automatically give the player all of their collectible abilities (Dash + Double Jump)
Press Alt + I to activate
Shorten Timer
Sets the timer to 10 seconds to easily restart and test timer functionality
Press Alt + T to activate
Restart Room
Alternative way to instantly restart the main game room
Press Alt + R to activate
Pause/Resume Timer
Press Alt + P to trigger
Teleport to College Area
Press Alt + C to trigger
Teleport to final Area
Press Alt + D to trigger

#########################################################################################################################################################

Game Walkthrough:

“Fragmented” Walkthrough:
Start the game by pressing play.
You begin the game in a playground, representing the main character’s childhood memories.
Talk to the Child NPC
Start platforming up the slide to the monkey bars to the floating objects and platforms above.
Move from across the screen going up until you reach the treehouse. Collect the friendship bracelet to unlock the Dash ability. You must collect this before moving on.
Press Z on the treehouse door to enter the College section, showing the main character’s young adult life.
Talk to the College Friend NPC
Move through the College maze by first going to the door on the very right in the middle of the area.
From where the door takes you, go through a wall to another door to then enter the area with the energy drink. Collect the item to get the Double Jump ability. You must collect this before moving on in the game.
Retrace your steps back to the main part of the College section.
Move to the top of the hallways and enter the far right door.
Dash through a nearby wall and press Z on a unique door to enter the final section.
You start out in a house from the main character’s older years. Move down the hallway to talk with the Spouse NPC.
Start platforming in the dreamscape across the floating objects.
You will have to use both the Dash ability to go through walls and the Double Jump ability to go through the obstacles quickly.
Watch out for your shadow clone! He will chase you in a path near the middle of the platforming section. Avoid him and avoid falling down or else you will have to restart the final section.
Platform up and down from right to left to reach a white door. Press Z to enter and beat the game!
You’ll see a final cutscene where the main character finally remembers themselves. Look at your final time and see if you can beat it in another playthrough!

#########################################################################################################################################################

Licensing Information:
Visual Assets:
Pixel Art Door Pack by karsiori (CC0 - https://karsiori.itch.io/pixel-art-door-pack-animated)
Free Pixel Art Bar and Cafe Items Pack by karsiori (CC0 - https://karsiori.itch.io/free-pixel-art-bar-and-cafe-items-pack)
Free Pixel Art Trash Pack - Animated  by karsiori (CC0 - https://karsiori.itch.io/free-pixel-art-trash-pack-animated)
Free Pixel Art Vending Machines by karsiori (CC0 - https://karsiori.itch.io/pixel-art-vending-machines)
Kitchen Equipments by SeeOne(Custom License - https://seeone.itch.io/kitchen-equipment)
Free Summer Pixel Art Backgrounds from CraftPix (https://craftpix.net/file-licenses/)
Free Tree Pixel Art Asset Pack from CraftPix (https://craftpix.net/file-licenses/)
Pixel Paintings Pack – Framed Art for Cozy Interiors by biruk-okami (Custom License - https://biruk-okami.itch.io/pixel-paintings-pack-framed-art-for-cozy-interiors)
Lunchtime Doubly So Font by codeman38(Custom License - https://www.1001fonts.com/lunchtime-doubly-so-font.html)
All Other Art by Micah Platte(2026)

Audio Assets:
Hiking Boot Footsteps on Stone by Fission9 (CC0 - https://freesound.org/people/Fission9/sounds/521590/)
Jump_C_04 on Stone by cabled_mess (CC0 - https://freesound.org/people/cabled_mess/sounds/350906/)
Glassy transition by cabled_mess (CC0 - https://freesound.org/people/cabled_mess/sounds/360734/)
video game menu music by magmadiverrr (CC0 - https://freesound.org/people/magmadiverrr/sounds/661248/)
Jump/Dash by avaol (CC0 - https://freesound.org/people/avaol/sounds/864774/)
8bit Fall by Fupicat (CC0 - https://freesound.org/people/Fupicat/sounds/538151/)
Game Theme #4 by tyops -- https://freesound.org/s/423805/ -- License: Attribution 4.0
VS Button Click 04.mp3 by Vilkas_Sound -- https://freesound.org/s/707041/ -- License: Attribution 4.0
Doors - Wood Door With Latch_1 by PNMCarrieRailfan -- https://freesound.org/s/684538/ -- License: Attribution NonCommercial 4.0

Code:
Simple Pause Menu for GameMaker by jasontomlee (https://jasontomlee.itch.io/pause-menu-gamemaker-1-2 - https://creativecommons.org/licenses/by/4.0/)

AI usage:
The code authors acknowledge the use of AI agents Cursor and Claude in the preparation or completion of this assignment. Cursor was used in the following way in this assignment: brainstorming and debugging the collectible glow particles for the bracelet and energy drink, which were drawing as one large white square, and helping fix that and push the change to GitHub. Claude was used for text rendering for the final screen and debugging. 

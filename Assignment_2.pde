void setup() {
  println("THE LOST KINGDOM");
  println();

  int hp = 100;
  int gold = 0;
  boolean hasMap = false;
  boolean hasSword = false;
  boolean knowsMagic = false;

  println("You find a mysterious glowing book.");
  println("As you touch it, a bright light surrounds you.");
  println("When you open your eyes, you find yourself in a strange fantasy world.");
  println("A voice tells you that the Crystal of Light has been stolen.");
  println("Without the crystal, the kingdom will fall.");
  println("Your mission is to find the Crystal of Light and save the kingdom.");
  println();

  println("Two paths lie before you.");
  println("The first leads toward a distant village.");
  println("The second disappears into a dark forest.");
  println();

  println("Which path will you choose?");
  println("1. Go to the village");
  println("2. Enter the forest");

  int path = Ask.forInt("Which path will you choose? 1 or 2: ");

  if (path == 1) {
    println();
    println("You arrive at a small village surrounded by stone walls.");
    println("People are rushing through the streets, carrying supplies.");
    println("Something seems wrong, and the villagers look worried.");

    println("As you walk through the village, you notice two things.");
    println("A large building has a sign that says 'Adventurer's Guild'.");
    println("Nearby, a mysterious mage is standing alone beside a fountain.");

    println("You feel that both choices could lead you closer");
    println("to the Crystal of Light.");

    println();
    println("What will you do?");
    println("1. Visit the Adventurer's Guild");
    println("2. Talk to the mysterious mage");

    int villageChoice = Ask.forInt("Choose 1 or 2: ");

    if (villageChoice == 1) {
      println();
      println("You enter the Adventurer's Guild.");
      println("The guild leader gives you a simple quest.");
      println("A group of slimes has been attacking the village.");
      println("You defeat the slimes and earn 20 gold.");

      gold = gold + 20;

      println("You now have " + gold + " gold.");
    } else {
      println("You approach the mysterious mage.");
      println("The mage looks at you and says,");
      println("\"You are not from this world, are you?\"");
      println("The mage teaches you a basic magic spell.");

      knowsMagic = true;

      println("You learned magic!");
    }
  } else {
    println();
    println("You enter the Enchanted Forest.");
    println("The trees are covered in glowing leaves.");
    println("A strange wind passes through the forest.");
    println("You notice two paths ahead of you.");
    println();

    println("1. Visit an ancient shrine");
    println("2. Search a dark cave");

    int forestChoice = Ask.forInt("Choose 1 or 2: ");

    if (forestChoice == 1) {
      println();
      println("You approach an ancient shrine.");
      println("A strange light shines from inside.");
      println("You discover a magical sword resting on a stone.");
      println("You take the sword and feel its power.");

      hasSword = true;

      println("You obtained the Magical Sword!");
    } else {
      println();
      println("You enter the dark cave.");
      println("The cave is quiet, but you hear something moving.");
      println("You search the walls and discover a hidden chest.");
      println("Inside, you find a mysterious map.");

      hasMap = true;

      println("You obtained a Secret Map!");
    }
  }


  // ==============================
  // JOURNEY TO THE CAPITAL
  // ==============================

  println();
  println("You continue your journey toward the capital.");
  println("The Crystal of Light is somewhere inside the kingdom.");
  println("You know you are getting closer.");
  println();

  println("After several hours, you reach a massive stone bridge.");
  println("The bridge has been destroyed.");
  println("The road to the capital is blocked.");
  println();

  println("You notice two possible ways forward.");
  println("1. Search for another route through the mountains.");
  println("2. Try to cross the broken bridge.");

  int bridgeChoice = Ask.forInt("Choose 1 or 2: ");

  if (bridgeChoice == 1) {
    println();
    println("You climb into the mountains.");
    println("The path is steep and difficult.");
    println("After several hours, you discover an old road.");
    println("The road leads toward the capital.");
    println("You continue your journey.");
  } else {
    println();
    println("You carefully begin crossing the broken bridge.");
    println("Suddenly, you hear a loud roar below you.");
    println("Several shadow creatures appear.");
    println("You quickly run across the bridge.");

    hp = hp - 10;

    println("You escape, but you lose 10 HP.");
  }


  // ==============================
  // SHADOW CREATURES
  // ==============================

  println();
  println("You continue toward the capital.");
  println("Suddenly, several shadow creatures appear on the road.");
  println("They are surrounded by dark purple energy.");
  println();

  println("What will you do?");
  println("1. Fight the creatures");
  println("2. Run past them");
  println("3. Use your special ability");

  int shadowChoice = Ask.forInt("Choose 1, 2, or 3: ");

  if (shadowChoice == 1 && hasSword == true) {
    println();
    println("You draw your Magical Sword.");
    println("The sword begins to glow.");
    println("You charge toward the shadow creatures.");
    println("After a difficult battle, you defeat them.");
    println("The road to the capital is clear.");
  } else if (shadowChoice == 3 && knowsMagic == true) {
    println();
    println("You raise your hand and use your magic.");
    println("A powerful spell surrounds the shadow creatures.");
    println("The creatures disappear into the darkness.");
    println("The road to the capital is clear.");
  } else if (shadowChoice == 2) {
    println();
    println("You decide not to fight.");
    println("You sprint past the shadow creatures.");
    println("They chase you, but you manage to escape.");

    hp = hp - 15;

    println("You lose 15 HP while escaping.");
  } else {
    println();
    println("You try to fight the creatures, but you are not prepared.");
    println("You barely escape.");

    hp = hp - 25;

    println("You lose 25 HP.");
  }


  // ==============================
  // THE CAPITAL
  // ==============================

  println();
  println("After a long journey, you finally reach the capital.");
  println("The massive kingdom walls rise above you.");
  println("But something feels wrong.");
  println();

  println("There are no guards at the gates.");
  println("The streets are completely empty.");
  println("Dark energy covers the buildings.");
  println();

  println("You slowly walk through the silent streets.");
  println("At the center of the capital, you see the royal castle.");
  println();

  println("A strange purple light shines from the top of the castle.");
  println("You realize the Crystal of Light must be inside.");
  println();

  println("You approach the castle doors.");
  println("Before entering, you check your equipment.");
  println();

  println("===== CURRENT STATUS =====");
  println("HP: " + hp);
  println("Gold: " + gold);

  if (hasSword == true) {
    println("Magical Sword: YES");
  } else {
    println("Magical Sword: NO");
  }

  if (hasMap == true) {
    println("Secret Map: YES");
  } else {
    println("Secret Map: NO");
  }

  if (knowsMagic == true) {
    println("Magic: YES");
  } else {
    println("Magic: NO");
  }

  println();
  println("You take a deep breath.");
  println("You open the castle doors.");
  println();

  println("The doors suddenly slam shut behind you.");
  println("The castle is completely silent.");
  println("You walk through the dark hallway.");
  println();

  println("At the end of the hallway, you see a massive throne room.");
  println("The Crystal of Light floats above the throne.");
  println("Its light is the only thing keeping the darkness away.");
  println();

  println("But someone is standing in front of it.");
  println();

  println("A warrior wearing black armor slowly turns toward you.");
  println("\"You have come a long way...\"");
  println();

  println("The Dark Knight raises his sword.");
  println("\"But your journey ends here.\"");
  println();

  println("===== THE FINAL BATTLE =====");
  println();

  println("What will you do?");
  println("1. Fight the Dark Knight");
  println("2. Use the Secret Map");
  println("3. Use Magic");
  println("4. Escape");

  int endingChoice = Ask.forInt("Choose 1, 2, 3, or 4: ");

  if (endingChoice == 2 && hasMap == true) {
    println();
    println("You quickly unfold the Secret Map.");
    println("The map reveals a hidden entrance behind the castle wall.");
    println("You sneak past the Dark Knight and reach the Crystal of Light.");
    println("GOOD ENDING: You take the Crystal and save the kingdom!");
  } else if (endingChoice == 3 && knowsMagic == true) {
    println();
    println("You use the magic you learned from the mysterious mage.");
    println("The Dark Knight is distracted by your spell.");
    println("You quickly grab the Crystal of Light.");
    println("GOOD ENDING: You take the Crystal and save the kingdom!");
  } else if (endingChoice == 1 && hasSword == true) {
    println();
    println("You raise your Magical Sword and face the Dark Knight.");
    println("The Dark Knight charges toward you.");
    println("The final battle begins.");

    hp = hp - 30;

    println("After a difficult battle, you defeat him.");
    println("You lose 30 HP during the battle.");
    println("You take the Crystal of Light.");
    println("GOOD ENDING: You save the kingdom!");
  } else if (endingChoice == 4) {
    println();
    println("You realize the Dark Knight is too powerful.");
    println("You turn around and escape the castle.");
    println("NEUTRAL ENDING: You survive, but the kingdom is not saved.");
  } else {
    println();
    println("You try to stop the Dark Knight, but you are not prepared.");
    println("The Dark Knight defeats you.");

    hp = 0;

    println("BAD ENDING: Darkness takes over the kingdom.");
  }

  println();
  println("===== ADVENTURE COMPLETE =====");
  println("Your HP: " + hp);
  println("Your gold: " + gold);
}

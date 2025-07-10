# Eskorte (Minecraft Datapack for 1.21.7)

**Eskorte** is a competitive Minecraft 1.21.7 minigame where two teams face off:
**Attackers** must escort an automatically moving minecart with a villager to the goal, while **Defenders** try to hold them off until the time runs out.

## Features

* Automatically moving minecart along placed waypoints
* Two teams: **Attackers** and **Defenders**
* **Checkpoints** with reset functionality
* **Win conditions** for both teams
* Simple setup using `/function`
* Easy-to-build path using visual marker blocks
* Minecart can't be moved manually
* Setup items are easy to distinguish

---

## Installation

1. Download the datapack.
2. Move the unzipped folder into your world's `datapacks` directory.
3. Start or reload the world.
4. Run `/reload` in chat.

---

## Setting up the Game

### Step 1: Start Setup

```mcfunction
/function eskorte:setup/start
```

You will receive four setup items:

| Item           | Purpose     |
| -------------- | ----------- |
| Gold Block     | Start Point |
| Redstone Torch | Checkpoints |
| Rail           | Waypoints   |
| Diamond Block  | Goal Point  |

> **Important:** These blocks are **not** placed via right-click.
> Instead, **hold the item in your hand and press Shift** – the block will be placed **beneath** the player.

### Step 2: Build the Track

* Placement order: **Start → Waypoints → Checkpoints (repeat as desired) → Goal**
* Checkpoints are also numbered waypoints.
* The placement order determines the minecart route.
* You can remove the marker blocks after placing them – they are only visual.
* Then place rails on top of the path.

### Step 3: Assign Teams

```mcfunction
/function eskorte:admin/join_attackers
/function eskorte:admin/join_defenders
```

### Step 4: Start the Game

```mcfunction
/function eskorte:game/start
```

## Ending or Resetting the Game

* **Stop game (track remains):**

```mcfunction
/function eskorte:game/stop
```

* **Full reset (including track):**

```mcfunction
/function eskorte:admin/reset_all
```

---

## Technical Notes

### Changing Game Duration (default: 3000 ticks = 2.5 minutes)

Edit the `3000` value in the following files:

* `data/eskorte/functions/game/start.mcfunction`
* `data/eskorte/functions/admin/reset_all.mcfunction`

Look for these lines:

```mcfunction
bossbar set minecraft:escort_timer max 3000
scoreboard players set #game_time escort_timer 3000
```

### Changing Cart Speed

* Forward speed: `10`
* Reverse speed: `5`

To change the motion values, edit:

* `load.mcfunction`
* `cart/apply_motion.mcfunction`
* `cart/move_forward.mcfunction`
* `cart/move_backwards.mcfunction`

> Requires basic understanding of Minecraft commands.

---

## Structure Overview (For Developers)

* `setup/`: Placement logic for start, goal, waypoints, and checkpoints
* `admin/`: Team setup, reset, and admin tools
* `game/`: Game loop, timer, win conditions
* `cart/`: Minecart movement and waypoint handling

---

## Questions?

Found a bug or have a suggestion?
Open an [issue](https://github.com/your-username/eskorte-datapack/issues) or send me a message!

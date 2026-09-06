# Dark Elf Lore Compendium

**Purpose:** Single reference sheet aggregating ALL known Dark Elf lore for the Elf Destiny / Dark Elf Beta project — history, religion, houses, magic, military, biology, characters, and feature ideas — so new features can be pulled from one place.

**Compiled:** 2026-08-21, from a full sweep of: the Discord server export (`elf-destiny-discord-bot\output\message-history.md`, 358k lines), the lore repo (`elf-destiny-lore-master`), both wikis (`elf-destiny-wiki`, retired `elf-destiny-ck3-wiki`), the precursor mods (`Dark Destiny`, `Elf Destiny Dark Elves Prototype`, `dark_elf_skin_color_prototype`), the current mods (`Elf Destiny`, `Dark Elf Beta`), and the modkit (`elf-destiny-modkit`, `ed_relig` etc.).

## Canon policy & tag legend

Per the PM (Discord handle **Eastpointed**), the canonicity hierarchy is:

| Tag | Meaning | Authority |
|---|---|---|
| **[EP-CANON]** | Direct Eastpointed statement of lore fact | Highest — canon |
| **[GAME]** | Implemented in Elf Destiny / Dark Elf Beta files (loc, traits, history) | Canon (de facto) |
| **[EP-INTENT]** | Eastpointed design plan/intent, not yet shipped | Canon-direction, details may change |
| **[DOC]** | Design docs / brainstorm files / prototype notes | Intent, not canon |
| **[COMM]** | Community contribution (other Discord users) | **NOT canon without PM review** |
| **[STALE]** | Written earlier, since superseded or contradicted | Flagged for PM ruling |

> ⚠ **Important sourcing note:** `elf-destiny-lore-master\dark-elves.md` (and the public wiki page built from it) was written from 2023–24 material and is **out of date** on several points. Eastpointed's 2024–2025 Discord rulings — especially the Sept 2025 "Dark Elf Alpha" announcements — supersede it. The authoritative design spec is the Discord export, `#🥩the-fridge > Dark Elf Alpha` and `> Dark Elves Workshop - Skin and Hair` threads (`message-history.md` lines ~351582–354214; bloodline announcement ~352855–352910).

---

## 1. What Dark Elves Are

**[EP-CANON] Dark Elves are an actual race** — not merely elves who chose dark magic:

> "A dark elf is an actual race, similar to the races of human in our real world. So yes skin tone and culture. Maybe they gained the skin tone they have from because it suited a particular planet (world/realm) they first came to power on." — Eastpointed, 2024-09-07
>
> "They came to Earth the same time as Humans/High Elves and exist in great numbers across the universe as well. Powerful Dark Elves will no doubt visit after the portal is opened." — same message

**[EP-CANON] …with a corruption layer on top.** "Dark" as *reputation* is separate from "dark" as *race*: "do not connect Dark with race! its a reputation thing!" (2024-05-16); "a subset of Dark Elves follow some true evil practice and are thereby corrupted, gaining spooky eyes" (2024-09-09, resolving yermog's race-vs-choice debate). So: **race = heritable phenotype; corruption = earned/practiced overlay.**

**[STALE]** The wiki/lore-master definition — "They are not a separate species — they are elves who turned to blood magic and forbidden arts, defined not by their blood but by their practices" (`elf-destiny-wiki\docs\lore\dark-elves.md`) — contradicts the race ruling as written. **RESOLVED by the 2026-08-21 PM ruling (see "The Binding Principle" below):** the practice (death-side Spark channeling) is what *originally* darkened them, but it fixed into heredity generations ago — so both statements are true at different depths of time. The wiki page still needs a rewrite to reflect this.

**[EP-CANON] They serve the Divine Spark, and are not cartoon-evil:**

> "Dark Elves serve the Divine Spark too. I think you'll find that the Divine Spark doesn't automatically = good guy." — 2025-09-16
>
> "Dark Elves are still worshippers of the Divine Spark, death feeds the divine spark on the lived experiences of the slain. So Dark elves have just a different focus of worship, such as blood magic and sacrifices." — 2024-09-07
>
> "maybe not strictly bad, but bad adjacent. Example: they practice blood magic. That doesnt make them automatically evil..... but man they are on the path." — 2024-05-06
>
> "There will be other elves, with their own unique traditions, and some may say be Le Bad." — 2023-12-20

**[GAME]** The canonical proof of moral complexity: the Dark Lord Veldric was destroyed by *"an unlikely collaboration of High and Dark Elves"* (expedition loc). "The line between dark and light has always run through the elves, not neatly between them" (wiki).

**[EP-CANON] Relations with High Elves** (2024-09-09): generally hate each other, "have fought many great wars against one another." But universe-wide institutions like the Aeluran Order transcend the in-fighting. Bloodlines are not race-limited ("there could be Valerith bloodline dark elves if the right circumstances came up"), but High Elven families "probably wouldnt intermarry with Dark Elf houses."

**[EP-CANON] Mixed breeding:** "if say a dark elf were to breed with a human, the resulting elf blood/human would look Dark Elfish" (2024-05-06). "Even with mixed skin tones, for gameplay sakes there will be a decided percentage that makes you High Elf or Dark Elf" (2024-09-09). **[GAME]** DEB implements this as `var:dark_elf_strain` 0–100, mean-of-parents, 50-tie coin-flipped once and persisted (§8).

### ★ The Binding Principle: the Death-Side of the Spark — [EP-CANON, PM ruling 2026-08-21]

**The shared characteristic of all Dark Elves — and what turns an elf dark — is the practice of the death-energy side of the Spark, as opposed to the life energy normally practiced by elves.**

The Spark has two currents: the outpouring that creates and nurtures life (channeled by light elves — growth, radiance, the golden glow), and the return flow that reclaims lived experience through blood and death. Dark Elves channel the return current. Sacrifice opens the channel wider; blood magic is drawing power from spent Spark as it flows home. A body saturated with returning Spark darkens — grey, dusk-purple, deep blue are the colors of Spark that has *lived*.

This single principle explains and unifies the existing mechanics and canon:
- **Heritable + diluting** — saturation passes in the womb, halved with an unsaturated parent (the implemented mean-of-parents strain).
- **Dormant colors resurface** — the current remembers its channel.
- **Elf blood is more potent for blood magic** — more Spark returning per death.
- **Converts are possible** — an elf who takes up death-side channeling saturates over time (justifies DEB's story-conversion path).
- **House transformations** (black sclera, black lips, blood-red hair, vibrant green eyes) are localized intensifications — each house channels the current through a different organ of power.
- **The corruption layer stays separate** — "spooky eyes" come from *over-drawing*: pulling experience from the living rather than the dying. A practice-line even most Dark Elves won't cross; not blood.

**Accepted as direction (names deliberately vague/provisional for now):**
- *The current itself* — working names: "the Returning," "the Ebb," "the Harvest Current" ("Umbra" available; "umbral" is unused in the setting).
- **The First Harvest** (origin frame): Dark Elves first came to power on a **dying, Fading world** whose ambient Spark was nearly gone — death-side channeling began as famine survival, not wickedness, and generations of it marked them until the practice fixed into heredity. By the time they spread across the realms they were a people, not a practice. (Compatible with the "skin tone from the planet they first came to power on" musing; keeps the not-cartoonishly-evil guardrail — High Elf contempt for the practice is partly privilege.)
- **The Tithe** (the binding faith-obligation): every Dark Elf culture, north or south, holds the Spark's gift must be repaid *now, in kind* — lived experience returned through sacrifice — rather than slowly through devotion as the Aelurans do. Morgath, Lloth, and Typhos exemplify different ways of paying it. The **Dark Sisters** administer the Tithe within the Aeluran hierarchy.
- **The Underdark as the connective tissue**: the world-spanning labyrinth is *their* road — trade, marriage, and pilgrimage through the deep ways kept grey northerners and violet southerners one civilization, and its mouths explain where enclaves surface (plus the tunnel-tremor invasion events and Underdark-only bloodlines).

**Net definition:** the darkening *is* caused by the magic — but fixed into heredity generations ago. Today you are born to it (race), can rarely convert into it (saturation), and can separately corrupt yourself (over-drawing).

*Still proposed, not ruled:* whether Vael'Drakhor's "cataclysm of their own making" was an over-draw catastrophe — the Blood Forge pulling so hard on the return current it harvested itself.

---

## 2. Origins

- **[EP-CANON]** Dark Elves arrived on Earth **at the same time as Humans and High Elves** (through the Grand Portal, ~300,000 years ago per the shared timeline) and exist in great numbers across the universe. This supersedes lore-master's "origin unknown."
- **[EP-CANON, 2026-08-21]** Deep origin accepted as direction — **the First Harvest** (§1, Binding Principle): they became a people on a dying, Fading world where death-side Spark channeling was the only way to survive; generations of the practice fixed the darkening into heredity before they ever spread to other realms. Details and names deliberately vague for now.
- **[STALE / EP-musing 2023-12-20]** "Maybe they are originally from Scandinavia, had some huge fall out with the standard elves, and fled to the dark jungles to hide and grow in power." — an early musing, effectively replaced by the Dökkálfar-north / Drow-south placement (§4). Never confirmed as canon.
- **[EP-CANON]** Skin tones possibly gained "from a particular planet they first came to power on."
- Open (§14): why the schism/enmity with High Elves began; whether pre-Earth Dark Elf history will ever be written.

**Shared world frame [GAME]:** Elves and Humans came through the Grand Portal (First Age); countless empires rose and fell; the last Elf Emperor was overthrown in the **Great Rebellion**; the **Great Exodus** followed and the rebels destroyed the portal; remnant elves survive in the far wilds. Ambient Spark is scarce until the Grand Portal is restored (gates high Ascension). Dark Elven imperial history sits within the pre-Rebellion span, and "powerful Dark Elves will no doubt visit after the portal is opened" **[EP-CANON]** — a built-in late-game invasion hook.

---

## 3. Canonical History — the Dark Lords & Sites

All **[GAME]** (Elf Destiny expedition/holy-site localization — `Elf Destiny\localization\english\activities\expeditions\expedition_activity_l_english.yml`), the primary in-game canon source. The recurring theme: **dark elven powers fall to their own magical hubris, not to invaders.**

### Vael'Drakhor — "The Blood Forge" (Gobi Desert, c_gobi_gurvan_saikhan)
The great Dark Elven capital. Verbatim:
> "Here, countless bloodmages of unmatched skill practiced their forbidden arts, forging twisted creatures for their armies — horrors that were known and feared across the world. Their empire was immensely powerful, yet its downfall is believed to have come not from invaders, but from a cataclysm of their own making. Few dare explore these ruins today, for massive red venom-spraying death worms are said to still guard the sands."

### The Grand Blood Altar (West Africa jungle, c_wenyon / b_tabu)
> "The Dark Elves once captured and sacrificed countless thousands here in the hopes of creating a fabled blood stone, a relic that would make the wielder unchallengeable but for the most powerful deities of the realms. One of the greatest battles of histories was fought here. The Dark Elves were ultimately stopped, but how far did their research first progress?"

Whether the **blood stone** was completed is deliberately open. *(In DEB, Triel/Myrvessa now rules this county — unwritten hook, §11.)*

### Dark Queen Hekla (Iceland, c_sudurland / b_stokkseyri)
Sorceress-queen; built the **Black Palace** of ebony into a volcano's side, drawing its fire to fuel her greatest spells; led legions of Dark Elves in conquest. Stopped by **the Light's Champions** — "the most powerful magi and empowered volunteers of the North Elf Kingdoms" — who died doing it (their grave: **Tomb of the Light's Champions**, c_satakunta).

**[EP-CANON/INTENT] Hekla is not dead:** "Queen Hekla is not truly dead..." (2024-09-12). Planned event chain at her palace to **revive** her — "Maybe shes been preserved in a Gold statue or imprisoned/sealed"; "She would be of one of the upcoming Dark Elf Bloodlines"; the Dökkálfar "will be her Elf kingdom's remnants" (2025-08-28). **[DOC]** `_docs\brainstorm\random.md`: "make Hekla a revivable character - shes evil but has a ridiculously hard skill check to seduce her." **[COMM]** caravaggio1111: Hekla as "dark elf Sleeping Beauty" in stasis until the Grand Portal is restored.

### The Dark Lord Veldric (Shattered Spire, Africa, c_massina)
> "In all of the elven histories, few are as vile as the Dark Lord Veldric. His lust for power was great and his abilities were immense. It took an alliance of five of the greatest mages of the Age, an unlikely collaboration of High and Dark Elves, to corner the mad warlock in his tower and ultimately bring it down on his head."

### Aji Saka, the Cannibal King ("Cannibal's End", Indonesia, c_JAV_mataram)
Dark Elven king of a temple-fortress; "sacrificed countless souls here, devouring his victims alive in his ruthless quest for power." Mortally wounded by a great elven adventurer and hurled from the highest clifftop into the sea — **"his body was never recovered"** (deliberate return hook).

### The Dark Elven Emperor of the Wall (Meng Jiang's Wrath, East Asia)
A "cruel dark elven emperor" forced Meng Jiang's husband (a brilliant architect) to build a mighty enchanted wall, then had him slain to keep its secrets. Meng Jiang — an Aeluran magi — unleashed cataclysmic power that "shattered her husband's wall, obliterated the emperor, and laid waste to most of the realm."

### The Invasion of Mount Paektu (East Asia)
The warg lord **Hwanung** (dire-bear companion) awakened the volcano itself to repel a Dark Elven invasion of his realm.

### Adjacent dark sites (no explicit dark-elf attribution — candidates)
**The Wraith Wood** (N/E Europe): "a dark twisted forest home to twisted creatures… a stalking presence… a creeping shadow" — twisted creatures are the Blood Forge's signature product, so this is a strong Dark Elf lead. Also: the Sealed Magic Armoury ("an unspeakable evil… banished to the void" — with a weapon forged by the smith **Celebrim** per wiki), Darkened Emerald Veil, Mahasthangarh ("a dark lord possessed by an ancient spirit"), White Snake's Prison, Enchanted Forest of Daji.

**[GAME] Note:** the `aeluran_weavers` faith's holy-site list *includes* Hekla's Black Palace and the Grand Blood Altar — dark sites are canonically **Aeluran holy ground**, consistent with dark elves being inside the faith (§6).

---

## 4. The Two Peoples: Dökkálfar & Drow

**[EP-CANON]** — the official structure, announced with Dark Elf Alpha v1 (2025-09-16):

> "Im envisioning two types of Dark Elf
> - **Dökkálfar**: Grey skinned white haired Elves of the far north
> - **Drow**: Matriarchal Elves of purple/blueish/grey skin tones in the south jungles"

| | **Dökkálfar** | **Drow** |
|---|---|---|
| Skin | Grey | Purple / blue (even mix) **[GAME]** |
| Region | Northern Scandinavia + Iceland | Jungles of Sub-Saharan Africa + jungles east of India |
| Society | "Similar societal structure to current elves, male rulers / Aeluran priests"; Norse vibes; "the **anti High Elves**" | **Matriarchal** — "as are all of Drow culture" (Drow-wide fact, not per-house) |
| Religion notes | "Might worship some of the same LOTR Valar and some they dont, like Morgoth" | "Dark temples hidden deep in the jungle where theres blood magic rituals going on" |
| Houses | Drenmyre (ruling), Rynvela (vassal) | Myrvessa, Syldranis |
| Lore antecedent | Hekla's kingdom's remnants; Norse dökkálfar | D&D Drow (chosen over Dunmer: "more flushed out lore, bigger fan base… more interesting culture") |

**[EP-INTENT] Jungle, not Underdark — but the Underdark exists:** "I realize that Drow are traditionally known for living underground, But jungle kind of fits a vibe I have in mind. Invasion armies events where you get reports of tremors nearby and a tunnel forming would be cool." And (2025-08-28): "I do think having an underdark/underworld lorewise makes sense, and there can still be other Dark Elves living under there... Having additional bloodlines only obtainable from there would be very cool. A couple expedition sites mention they are entrances to the underground labyrinth which is essentially a world spanning dungeon. Plenty of room for entire civilizations down there too."

**[DOC]** `Elf Destiny\_docs\brainstorm\ancient_kingdoms.md`: "The Dark Elf ice kingdom of the north" — the intended Dökkálfar polity.

**[GAME] Current DEB cultures** (`common\culture\cultures\dark_elf_cultures.txt`) — both `heritage_elf`, `language_high_elven`, `ethos_courtly`, `martial_custom_male_only`:
- `elf_culture_dokkalfar` "Dökkálfar": traditions warrior_monks, only_the_strong, ruling_caste, hereditary_hierarchy; 100% grey.
- `elf_culture_drow` "Drow": traditions female_only_inheritance, nubian_warrior_queens, hidden_cities; 50 purple / 50 blue.
- ⚠ Tension: Drow are matriarchal (female inheritance, warrior queens) yet `martial_custom_male_only`. All traditions are vanilla — no custom dark traditions authored yet.

---

## 5. The Houses (Bloodlines)

### The Four Official Houses — [EP-CANON], announced 2025-09-16

| House | People | Deity | Theme | Physical mark | Sigil | Seat |
|---|---|---|---|---|---|---|
| **Drenmyre** | Dökkálfar | **Morgath** (+ other Dark Valar) | Rule by fear & tyranny; **primary ruling family** of the Dökkálfar | Sclera turn black | **Wyvern** | Northern Scandinavia |
| **Rynvela** | Dökkálfar | — | Spirit realm; necromancers ("when necromancer trait is added this family will be at the front of the line"); **vassal dynasty under the Drenmyre**, bound by marriages | Lips turn black | **Raven** | Iceland |
| **Myrvessa** | Drow | **Lloth** (Spider Goddess) | Scheming matriarchs; "pursuit of power by whatever means necessary" | Hair becomes blood red | **Spider** | Jungles, south coast of Africa |
| **Syldranis** | Drow | **Typhos** (serpent god) | "Reckless evolution, at the cost of more frequent defects in their line"; rare genetic traits | **Eyes vibrant green** | **Hydra** | Jungles at the foot of the Himalayas |

⚠ Discrepancies between the canon table and current implementation: DEB's Syldranis portrait uses forced eye color genes but the *green eyes* mark should be verified; the prototype-era sigil sketch listed Wyvern/Harpy/Hydra/Naga/Minotaur — canon is now Wyvern/Raven/Spider/Hydra.

**[PM ruling 2026-09-02] The bloodline dynasties are ancient.** All four houses have existed for countless thousands of years. No character written into history files is a true founder; the oldest authored member of each house (Morgvar, Xalvira, etc.) is simply the furthest back the record goes, and older kin may exist unrecorded (e.g. Graendal, a second son of a Drenmyre cadet line by a Myrvessa matriarch, whose parents are deliberately unwritten).

### Shipped house descriptions — [GAME] (`Dark Elf Beta\localization\english\dark_elf_stuff_l_english.yml`)

**House Syldranis:** "Descended from the ancient Drow house of Syldranis, this bloodline reveres the serpent god Typhos with fervent zeal, pursuing reckless experiments in evolutionary ascent. Their progeny adapt swiftly across generations, blessed with uncanny resilience yet cursed by volatile mutations." — *"Genetic ascendance and absurdity marks a Syldranis."*
Mechanics: ±25% random genetic both ways, +25% inbreeding, +25% genetic strengthen; rare genetics more common.

**House Drenmyre:** "The ancient dark elf lords of House Drenmyre reign with unrelenting tyranny, their piercing eyes sowing dread in vassal and foe alike. Through ruthless oppression, they bind their realm in fear, quelling dissent with an iron hand. Yet, such merciless rule breeds isolation, as allies shun their shadowed court and whispers of rebellion stir." — *"Eyes that peirce and an umbra of fear marks a Drenmyre."* ⚠ typo "peirce" → "pierce".
Mechanics: −5 diplomacy, +2 prowess, tyranny gain +20%, dread/knight scaling off tyranny, cowed-vassal tax/levy +10%.

**House Myrvessa:** "Descended from the ancient Drow matriarchs of House Myrvessa, this bloodline is blessed by Lloth's divine favor, weaving ruthless schemes to advance her will and their dominion. Their unyielding loyalty binds the house in unbreakable unity, yet their treachery and zeal cast them as pariahs among the realms, their whispered plots ensnaring foes like silken threads." — *"Ambition and treachery marks one as Myrvessa."*
Mechanics: −2 diplomacy, +10 attraction, +2 intrigue/piety level, −30 scheme phase vs lovers, +10 house/+5 dynasty opinion, −15 different-culture opinion, +1 max murder schemes. Signature hair: `spider_red` "Myrvessa Bloodline Red".

**House Rynvela:** "The ancient dark elf lords of House Rynvela bear a profound bond with the spirit realm, their black lips marking them as conduits of otherworldly power. Renowned for necromancers and wielders of ethereal sparks, they commune ceaselessly with spirits, their gaze fixed upon the unseen realm. Yet, this obsession drives many to madness, their minds unraveling under the weight of spectral whispers." — *"Lips of Black and mutters to the unseen marks a Rynvela."*
Mechanics: +4 learning, −3 learning/stress level, +1 learning/piety level, +10% stress gain; reincarnation + possessed_genetic more common.

All four: `physical = yes`, `inherit_chance = 50` (100 if both parents), no random birth, `flag = dark_elf_bloodline`, purple icon glow (`Dark_Elf_Purple` GUI template).

**[EP-INTENT] Per-house design ideas** (2025-08/09 Discord): Lloth house — kidnapping/hostage bonuses, black-widow lips, seduction bonuses. Typhos house — mutation/multi-birth odds; god-quests/rituals/artifacts unlock **snake/spider mutations, combinable** ("slight scaly effect for snake mutation?"); **spider blessing = two pupils per eye** (prototyped). Syldranis — a **mutation pit** for beast-breeding, "or a long lost dark elf technology of old that needs to be rediscovered"; "trying to accelerate their genetic excellence through blood magic, going further than even the most ambitious of the other elf families."

### Cadet / extra houses
- **[GAME] House Vra'khaz** (dynasty 696979, Dökkálfar) — "House of the Drenmyre reavers" — the tinder-import reaver lineage (§11).
- **[DOC] Abandoned 5th house — Empath/"Harpy"** (prototype `bloodline_balancing.md` + orphan `trait_royal_elf_dark_elf_empathic_*` loc keys): universally loved, ignores faith/culture opinion penalties, enchant scheme power, negated fertility penalty; cons — weak more common, stress hits harder, low prowess; pink hair.
- **[EP-INTENT] Vampire bloodlines** — planned as a **follow-up content patch**: BOTH Dark Elves and High Elves each get a vampiric bloodline with different takes on vampirism; "Blood Elf" race possible long-term. **[DOC]** prototype sketch: red eyes, "blood feed scheme success chance." Thundarael-as-vampires was proposed and **rejected** [COMM/EP]; Phoenixes floated as the High Elf counterpart [COMM].
- **[GAME] House Vaeldrik** (base-mod dynasty name echoing Vael'Drakhor) — "likely a Dark Elf-associated bloodline" per lore-master, unconfirmed. Ready-made hook.
- **[EP-INTENT]** Additional bloodlines obtainable **only from the Underdark** (§4). Hekla "would be of one of the upcoming Dark Elf Bloodlines" — which one is unstated (Rynvela holds Iceland; §14).
- Discarded name candidates [DOC]: Myrvethis, Zevranya, Zynthera.

### The six light houses (context — the template the dark houses mirror)
Valerith (silver hair, bred beauty / no self-control) · Serelion (purple eyes, pragmatic cruelty & dread / disloyal troops — Drenmyre's light counterpart) · Gwynthorn (industry / stress death) · Thundarael (pale manic spark-wielders / madness — Rynvela's light counterpart) · Daelurin (giant size — "giants of legend were Daelurin") · Lormelis (ocean-blue eyes, Atlantis; "From the Depths, We Rise"). Bloodlines are cross-racial in principle [EP-CANON]. Purple eyes stay Serelion-reserved; whitest hair Valerith-reserved [EP-INTENT].

---

## 6. Religion & Deities

**[EP-CANON] Framework:** Dark Elves worship the **Divine Spark**, differently — via blood magic and sacrifice, because "death feeds the divine spark on the lived experiences of the slain." The rival-creator-gods connection floated in lore-master is effectively answered **no**: their Dark Valar "all roll up to the Divine Spark" (2025-04-14).

**[EP-CANON/INTENT] The Dark Sisters** — the planned faith structure (stated repeatedly 2025-08 → 2026-03):
> "The planned lore when Dark Elves are added in CK3 is to create a new **'Dark Sisters'** branch of the faith, that still rolls up to the High Matriarch, but competes to gain rank in the order."

I.e. a *variant faith/tenet* inside the Aeluran hierarchy, not a rival religion (Aelurans partly modeled on Wheel of Time's Aes Sedai — colored sects, one elected leader). **[GAME]** consistent: every DEB dark elf is `aeluran_weavers`; Zynvara and Triel are seated **Aeluran Matrons**; Hekla's palace and the Grand Blood Altar are Aeluran holy sites.

**[EP-CANON] Dark Elf Valar exist:** "I do want Dark elf Valar, or equivalent power level" (2025-04-14). "Elves that Ascend the rank of Vala are essentially the pantheon of the Divine Spark… At minimum the Vala from LOTR will all be added… **Lloth of the DnD Drow is confirmed**" (2025-10-05).

### The dark pantheon
| Deity | Status | Notes |
|---|---|---|
| **Morgath** (Morgoth/Melkor) | [EP-CANON] Dökkálfar patron | Base mod already has "Melkor: God of the Void" + witch-god name Melkor. "Morgaths Crown and the three Silmarils will no doubt need to be added eventually." [COMM yanush]: dark elves should call him *Melkor* (Morgoth = the light elves' curse-name) — unconfirmed; Alpha text uses "Morgath". |
| **Lloth** | [EP-CANON] Drow spider goddess, Myrvessa patron | Confirmed as an Ascended Vala-tier being. Spelling **Lloth**. |
| **Typhos** | [GAME] Syldranis serpent god | Named only in house loc; no definition anywhere else yet. |
| **Ungoliant** | [EP-CANON] | "Apparently no one could take Ungoliant on, not even Morgath, and she just ended up eating herself" (2024-09-06). |
| Varda (night/stars), Mandos (death), Irmo (dreams) | [GAME] base pantheon | Natural dark-adjacent worship targets. Pantheon "said to number fourteen… Valar yet to be named" — open slots; "(unless fallen Valar are a thing 😏)" [EP tease]. |

**Base-mod religious furniture usable by a dark branch [GAME]:** tenet `children_of_the_divine_spark` already enables **prisoner sacrifice**; `tenet_aeluran_sisters` (→ Dark Sisters variant); doctrines `high_matriarch` + `coven_of_seven` ("seven powerful witches… the only ones able to perform certain rituals"); Aeluran ranks Servant → Sister → Matron → High Matriarch; the Order enforces penances against "murderers and **cannibals**" (direct friction with Aji Saka-style dark practice); religious symbol: shackles; laity "lowly ones."

**The Void [GAME/wiki]:** realm between realms; summoning creatures from it is bound up with dark magic; also a prison (Third Grand War evil banished into it). Glossary: Dark Elves "pursue power through blood magic and the Void." Melkor is God of the Void — thematic bridge. **[DOC]** ed_relig: hidden **Void Tainted / Void Inquisitor** advisor factions, "Void cultists."

---

## 7. Magic

**Shared substrate [GAME]:** the **Spark** (divine life energy). Magic is gendered: women → **Magi**, men → **Empowered** knights. Congenital ladder: Spark Gifted / Spark Savant / Spark Prodigy. Stages: Refined Spark Weaving → Crystalic Amplification → Ambient Spark Harvesting → Archonic Rituals → Divine Avatars. Battle of Wills magic-duel subsystem exists. Spark storable in crystals.

**[EP-CANON] Blood magic — the Dark Elf staple:**
> "Blood magic will be a staple of Dark elves although any magic user can technically use it. Dark elves like sacrificing to power spells." (2024-10-18)
>
> "Lore has it that **Elf Blood has more divine spark in it than Human Blood** and is more powerful for Blood Magic."

Planned: a **Blood Mage trait**; blood oaths granting strong hooks. [GAME] `tradition_blood_benders` exists in base mod ("This culture reveres the practice of blood magic…" — one line, unclaimed by any culture). Mass-sacrifice → **blood stones**; twisted-creature forging (§3). **[DOC]** ed_relig magic categories: Spark Wielding / Life / **Blood Magic ("perversion of life magic")** / Spirit Magic; "magic should be VERY rare."

**[EP-INTENT] Evil elf traditions considered** (2023-12-20): "**Void Summoners**, **Blood Magicians**, etc are all evil elf traditions I've been considering." Plus vampirism as the **immoral Ascension path**: "humans/elves that drink elf blood in hopes of ascending the immoral way. They gain power but at great cost." **[DOC]** ed_relig: witches disconnected from elves, re-connected to blood magic — "they will hunt elves for their blood to ascend or gain power → tainted ascension → AKA Vampires!"; a grand event where sisters try to become **Witch Queens** and the **Black Tower** is formed.

**[DOC] The Blood Magic system design** (prototype `dark_elves.md` — the largest unimplemented original design):
- **Human Sacrifice** (tenet): extra piety; combos with Ascension so additional characters join; sacrificing someone close → chance of *double Ascension* (display the +x%!); during pregnancy → better traits or "ascending in the womb"; glimpse the future (evolved Oracle lifestyle).
- **Memory Reading**: reveals all secrets; used on prisoners/submissive courtiers; ordering it risks refusal; arresting after is tyranny.
- **Reaving**: every enemy personally defeated in combat grants a boost; 5-stage trait tracks power; hook for the Empowered blood-mage variant **"Blood Knight."**
- **Rejuvenation**: heal injuries, de-age; a new lifestyle requiring a "Healer" archetype.

**[DOC] Blood Oath traditions** (same doc):
- **Oath of Fealty** — vassals blood-sworn never to rebel; maybe bloodline-transferable.
- **Oath of Servitude** — stronger; refused by default (needs strong hook or torture); with the sacrifice tenet can bind an **entire dynasty**.
- **Oath of Final Resolution** — sworn when a loved one is murdered (or vs rival/nemesis): 10 years to kill them, with boosts; **fail and you die**.

**[GAME] Archonic Amplification** (base tradition — the mod's existing institutional dark magic): "control collars, spirit possession… a new class of spark wielder… primal creatures of simple intent and immense power."

---

## 8. Biology, Phenotypes & the Strain System

**[GAME] Implemented in DEB** (branch feature/dark-elf-race, verified in-game):
- **12 dark tiers** mirror the light Ascension ladder 1:1 (dark_elf_blood … dark_aratar). Display names **alias the light names by design** — a dark High Elf shows as "High Elf." *(No dark-specific tier lore text exists — biggest current writing gap.)*
- **`var:dark_elf_strain`** (0–100, absent = light): heritable dark/light axis orthogononal to tier. Mean-of-parents inheritance; exact-50 tie coin-flipped once, persisted as 49/51; dark×dark → 100. **Ascension is dark-preserving** (strain never downgraded by re-init).
- **Stat identity ("shadow profile"):** Intrigue replaces Learning; Prowess boosted; Attraction Opinion up. Mortality/fertility/inbreeding identical to light elves. Ladder (Int/Prow/AttrOp): elf 2/3/2 → high_elf 4/5/2 → true_elf 6/8/3 → fae 8/10/4 → celestial 15/18/5 → eldar 25/30/7 → maiar 50/55/15 → valar 75/80/25 → aratar 99/…
- **Skin colors:** `drow_skin_grey/purple/blue` (Dökkálfar grey; Drow even purple/blue). **DNA-first** (authored DNA is truth; the variable system only for converts, who breed true 50/50). Color inheritance: child takes one parent's color, 50/50 if both, **no mutation — "colors only enter a lineage by marriage"; light children carry it dormantly and a dark grandchild can resurface it.** A normal-skinned dark elf is "legitimate by design."
- **Base Tone** ("Dark Elf Base Tone"): pins skin/hair/eye to (0,0) for the pastel drow look — also yields platinum hair + red eyes ("classic drow"). Inherited by all children of a carrier: a pinned child without drow genes "just reads as a pale, platinum-haired drow-blooded elf."
- **Hair:** drow purple/blue/white + `spider_red` (Myrvessa). **[EP-INTENT]** red hair added as a Dark-Elf-special color.
- **House transformations [EP-CANON]:** Drenmyre black sclera; Rynvela black lips; Myrvessa blood-red hair; Syldranis vibrant green eyes. Corrupted dark elves gain "spooky eyes" [EP-CANON].
- **Tattoos [EP-INTENT + GAME]:** "Dark Elves may have tattoos as a standard part of their culture, maybe its a rite of passage, maybe there is some magic involved" — black now; maybe white/colored/glowy. DEB has a full body-slot tattoo system (eye/forehead/neck/back/chest/arms/hands) with no lore text yet; TODO: make tattoos accessories like hair/beard.
- **Spider eyes:** `spider_eyed_1/2/3` test traits + spider sclera art — unexploited Lloth/Myrvessa hook ("two pupils per eye" blessing [EP-INTENT]). Prototype-era snake-eye art also exists; abandoned drider (spider-leg) genes commented out.
- **[DOC] Ultra-rare genetic trait ideas** (prototype): even bigger muscles, aesthetic form, hypnotic eyes, melodic voice, quick reflexes, **spark-infused hair** ("glows like Galadriel's hair"). [GAME] `rare_genetic_traits` concept: "unconventional/exotic beauty, purer_blooded, purest_blooded."

**[EP-CANON] Same Ascension steps** as light elves ("probably share the same name with many levels" — implemented exactly so); new dark race icons hoped for.

---

## 9. Culture & Traditions

**Current state [GAME]:** two cultures (§4). **[EP-CANON, 2026-08-22]** Both dark cultures share `tradition_the_old_ways_dark` — a second tradition also *named* "The Old Ways" (deliberate nod: each elf type keeps its own version of the ancient ways), with different art and effects (`common\culture\traditions\dark_elf_traditions.txt`; effects are a starter set pending PM selection). **[EP-CANON, 2026-08-22]** The Drow's unique tradition is **"Night Mothers"** (`tradition_night_mothers`) — deity-neutral matriarchal rule covering both the Lloth and Typhos cults; replaces the female_only_inheritance + nubian_warrior_queens placeholders. Effects: female-only/preference inheritance laws, +10/−10 opinion of female/male rulers, +20 owned scheme secrecy, +5 owned hostile scheme success. **[EP-CANON, 2026-08-22]** The Dökkálfar unique tradition is **"The Black Crown"** (`tradition_the_black_crown`) — rule through fear; the name alludes to Morgath's iron crown without naming him. Effects: +10 baseline dread, −25% dread decay, +10% intimidated-vassal tax & levy (deliberately complementing, never overlapping, the Drenmyre trait's tyranny/cowed-vassal scaling). Replaced the ruling_caste placeholder. Remaining slots are vanilla placeholders.

**Base-mod traditions ready to claim for dark cultures [GAME]:**
- **Blood Benders** (blood magic reverence) — the obvious flagship.
- **Human Shepherds** — "a long history of domesticating and breeding humans… beasts of burden… sometimes even used as food." *(Matches the old "human domestication" design note.)*
- **Archonic Amplification** — control collars, spirit possession.
- **Divine Hierarchy** / **Elven Superiority** — "Humans were made to serve elves." **[EP-CANON]** "The Slavery Tradition will be a special evolution tradition of Elven Superiority… then you can evolve your servant class slavery to full evil overlord"; **"its time to add in slavery when the dark elves arrive"** (2024-10-06).
- Familial Familiarity, Noble Husbandry, Endless Lord, Beguiling Nature (Entrance scheme + enchantress), The Singers (song-spells), Divinators.
- Framework note: Elf Destiny traditions are **discovered via expeditions** ("Lost Traditions") — dark traditions can be gated behind dark sites/Underdark.

**[DOC] Prototype tradition designs** (unimplemented, from `dark_elves.md`): **Mutation Pits** (evolves Beast Tamers; MAA from wyrm experiments — tech tree lesser wyvern → Hydra → Greater Serpents → Basilisk variant; a greater-basilisk-egg event chain ending in a massive 1/1 unit; "raptor riders?"), **Enchanted Tattoos**, **Duel Population Control** ("this culture's males challenge each other constantly, often to the death"), Raiders/Wanderers as a dark tradition, the three **Blood Oaths** (§7), matriarchal tradition ("Just make drow?" — since resolved by Drow matriarchy [EP-CANON]).

**[COMM] Culture angles (unreviewed):** shtef — Dark Elves see humans as *animals* (vs High Elves as knowledge-seekers); exc4l1bur — both purist: dark elves genocidal, high elves enslaving.

---

## 10. Military / Men-at-Arms

**No official Dark Elf MAA roster exists. [EP-INTENT]** First release is deliberately small ("mostly just some starter dynasties on the map and ethnicities, a handful of traits" — 2026-01-11).

**Canonical military lore [GAME]:** twisted-creature armies forged at the Blood Forge; Hekla's legions; the Mount Paektu invasion; "one of the greatest battles of histories" at the Grand Blood Altar.

**[EP-INTENT] Confirmed unit-adjacent plans:** **Polar Bear Riders** — discoverable Beast Tamers upgrade, Frazetta-inspired, for the Dökkálfar north. Mutation-pit beasts (§9). Necromancer trait (Rynvela).

**Design precedents to build on [GAME]:** the Aeluran **Spark Wielders** pattern (War Magi glass-cannon counters-everything + Magi Artillery; gold-recruited, **piety-maintained**) — a blood-magic equivalent maintained by a dark resource (prisoners? dread? dark piety) is the natural parallel. Warband units are prestige-recruited (Tribal Ascension). Elven units get forest/taiga/jungle/wetland bonuses, weak in mountains — fits jungle Drow.

**[COMM] Community MAA proposals (unreviewed — idea pool):**
- yanush_1945 (per his three-clan setting): Guards of the Crimson Eye, Crimson Sorcerers, Dark Justiciar; Sisters of Battle, Striking in Shadows, Dark Paladins; Dark Assassins, Keeping the Darkness, Shadow Trackers; Grim Rangers, Skull Hunters, Snow Spearmen, Clan Wardens; summonables (Wyverns, Dark Dragons, Hydras, Dark Automatons, Undead).
- ltcmdrmichaldrapalik: Reavers (skirmish); **Lich Troop** (bone armor, flayed face-masks, ritually "die" at campaign start — "You cannot kill what is already dead. Victory earns us life!"); The Impalers (pikes); **no archers** ("Dark Elves shun archery, preferring the visceral feel of glorious melee"); Black Riders (terror light cavalry that lowers development in baronies they pass); Executioners (heavy cavalry, blood-bonded swords).
- caravaggio1111: Nightblades, Death Knights, Shadow Archers, Shadow Spears, Night Mages.
- shekel1995: high damage / low defense as a racial combat identity.
- ⚠ Note the direct conflict: "no archers" [COMM] vs "Shadow Archers" [COMM] — needs a PM call if either is adopted.

---

## 11. Characters

### Seeded rulers [GAME] (`Dark Elf Beta\history\characters\dark_elf_characters.txt`)
All born 848.1.1, immortal, faith `aeluran_weavers`, flags race_elf + race_dark_elf:

| Name | Culture/House | Realm | Notes |
|---|---|---|---|
| **Zynvara** (f) | Drow, Syldranis (dyn 696977) | k_kamarupa (Assam) | Int 13/Lea 13; arrogant, deceitful, callous; magic_talent_3, exotic_beauty_good_3, **aeluran_matron** |
| **Triel** (f) | Drow, Myrvessa (dyn 696978) | k_guinea — **c_wenyon = the Grand Blood Altar** | Dip 13/Int 13; cynical, deceitful, wrathful; **aeluran_matron** |
| *"Placeholder"* (f) | should be Dökkálfar; Rynvela | k_norway (Iceland) — **c_sudurland = Hekla's Black Palace** | arbitrary, lustful, gregarious |
| *"Placeholder"* (m) | should be Dökkálfar; Drenmyre | k_sapmi | ambitious, arrogant, wrathful |

⚠ Known issues: two rulers literally named "Placeholder"; both Scandinavian rulers set to `elf_culture_drow` instead of dokkalfar; Scandinavia ruler missing DNA entry; no dynasties for the northern pair. **The two holy-site placements (Triel on the Blood Altar, the Rynvela queen on Hekla's palace) are strong intentional-looking hooks with zero written acknowledgment.** A light-elf Valerith enclave sits adjacent in Lapland.

### The Vra'khaz reaver line [GAME + COMM] (`dark_elf_tinder_characters.txt` — from the Discord **dark-elf-tinder** channel; "placements, families and traits are EDUCATED GUESSES pending PM review")
House Vra'khaz (dyn 696979, Dökkálfar), "House of the Drenmyre reavers":
`Kor'venak (invented patriarch, d.850) → Gor'Gharok "The Southbane" → Vra'korval "The Dread Reaver" → Bal'reyen "The Aspirant" (bastard) + Yr'tenei "The Void Divinator"`
- **Vra'korval, The Dread Reaver** (by rangology) — fur hat, white hair, red eyes; martial 14; wrathful sadistic torturer viking pillager.
- **Gor'Gharok, The Southbane** — massive tattooed warlord over a burning village; martial 17; berserker.
- **Bal'reyen, The Aspirant** — young noble, warpaint; intrigue-educated, ambitious, bastard.
- **Yr'tenei, The Void Divinator** — blindfolded seer; learning 15; blind, mystic, theologian, lunatic. ⚠ carries Drenmyre but reads thematically Rynvela — PM call.
- **Yr-Yorhin, The Chirurgeon** (Dökkálfar Syldranis) — bald apothecary, glowing spectacles; physician + torturer + herbalist. Perfect Syldranis fit.
- **Graendal** (by rasxon, Hulius Collection) — regal Drow; violet-blue skin, white hair, red eyes, feather cloak; intrigue 16; overseer.
Census at start: **10 dark elves** (4 rulers + 6 imports).

### Named figures from history [GAME]
Hekla (revivable — §3), Veldric, Aji Saka (body never recovered), the Wall Emperor (unnamed), the Light's Champions. **[EP]** "The Peddler may be dark elf adjacent… secret Maia level Elf or something like that." **[COMM]** markus4039's Vecla Tulvuth — first fan-named dark elf woman.

---

## 12. Naming & Language

- **[EP] Dark Elf dialect: officially undecided** ("Drolkthxlzl'lic and what not / Not sure"). Base elvish is Sindarin (Romaviri use Quenya). Both DEB cultures currently use `language_high_elven`; the old Dark Destiny prototype had a `language_dark_elven` pillar (loc "Dark Elven") that could be revived.
- **Observable naming registers [GAME]:** Dökkálfar/reaver — apostrophized gutturals with Vr-/Yr-/Bal-/Kor-/Gor- onsets + epithets (Vra'korval the Dread Reaver, Yr'tenei the Void Divinator). Drow matriarchs — smoother names (Zynvara, Triel, Graendal). House names: -myre/-vela/-vessa/-dranis pattern (+ discarded Myrvethis, Zevranya, Zynthera).
- **[COMM]** xaviersc2 authored Drow title names (Cyprus "Wyrm's Den" easter egg) and argues Dark Elves need their own title-name set. Naming note: Myrvessa is invented; D&D's Lloth-favored house is Baenre.
- ⚠ The old Dark Destiny `name_list_dark_elf` is placeholder-quality (generic fantasy compounds + broken vanilla names) — discard.
- Dynasty ID conventions: ED 696969–696976; DEB 696977 (Syldranis), 696978 (Myrvessa), 696979 (Vra'khaz). Loc keys can't contain apostrophes (underscore slugs used).

---

## 13. Feature Idea Backlog (pull list)

Ranked roughly by canon-weight:

**Canon-mandated (Eastpointed said it will happen):**
1. **Dark Sisters** faith branch (variant tenet; rolls up to the High Matriarch; competes for rank).
2. **Hekla revival event chain** at the Black Palace (gold statue / sealed; joins a dark bloodline; "ridiculously hard skill check to seduce her").
3. **Slavery** system arriving with dark elves; Slavery Tradition as an evolution of Elven Superiority.
4. **Necromancer trait** (Rynvela-first) — pairs with base-mod reincarnation/possession systems.
5. **Blood Mage trait**; blood oaths as hooks; prisoner sacrifice (tenet parameter already exists).
6. **Vampire bloodlines** for both Dark and High Elves (follow-up patch); elf-blood vampirism as the immoral Ascension path.
7. **Polar Bear Riders** (Beast Tamers upgrade, north).
8. Post-portal **Dark Elf visitations** from other worlds (late-game).
9. **Underdark** content: expedition entrances to the world-spanning labyrinth; Underdark-only bloodlines.
10. House god-quests unlocking **snake/spider mutations** (combinable); spider "two pupils per eye" blessing.

**Strong design-doc material (unimplemented, original):**
11. Blood Magic kit: Human Sacrifice / Memory Reading / Reaving ("Blood Knight") / Rejuvenation.
12. Blood Oaths: Fealty / Servitude / Final Resolution.
13. Mutation Pits (wyrm→hydra→basilisk MAA tree; basilisk-egg event chain).
14. Enchanted Tattoos (rite-of-passage; glowy variants) — the tattoo art system already exists.
15. Duel Population Control; dark Raiders/Wanderers tradition.
16. Empath/"Harpy" 5th house revival; ultra-rare genetic traits (hypnotic eyes, spark-infused hair…).
17. "Dark One" dark-triad personality capstone (Deceitful+Arrogant+Callous → Machiavellian/Narcissistic/Psychopathic → Dark One) — base-mod brainstorm, unbuilt.
18. Writing gaps: dark tier descriptions (currently aliased), house event content, site-placement acknowledgments (Triel/Blood Altar, Rynvela/Black Palace), tattoo lore text, Blood Benders expansion.

**Community pool (needs PM review before use):** MAA rosters (§10), yanush's three-clan setting & artifacts (appendix), humans-as-animals culture angle, Hekla-stasis variant, darkvision/keen-senses racial perks.

---

## 14. Contradictions & Open Questions for the PM

1. ~~**Race vs practice**~~ — **RESOLVED 2026-08-21 (see §1, "The Binding Principle"):** the death-side Spark practice is what turns/turned them dark; it fixed into heredity long ago. Race today, practice at the root. Remaining follow-up: rewrite the wiki dark-elves page to match.
2. **Origin of the schism** — *partially framed* by the accepted First Harvest direction (divergence on a dying world, pre-Earth, before the shared arrival). Still open: the specific history of Dark–High Elf enmity and their great wars; is the 2023 "Scandinavia fallout" musing formally dead?
3. **Vael'Drakhor's empire vs the four houses** — are today's houses remnants/descendants of the Blood Forge empire? Which house (if any) claims Vael'Drakhor? Is House **Vaeldrik** canon-connected?
4. **Hekla's house** — she "would be of one of the upcoming Dark Elf Bloodlines." Rynvela holds Iceland now — is Hekla a Rynvela? Or her own (5th) bloodline?
5. **Which deity for Rynvela?** The one official house with no named patron. Mandos/Irmo (death/dreams)? A new spirit-realm figure? None?
6. **Morgath vs Melkor naming** — should Dökkálfar say "Melkor" while light elves say "Morgoth" (yanush's unconfirmed proposal), or is "Morgath" the universal in-mod spelling?
7. **Typhos** — is he a Vala-tier Ascended elf like Lloth, or something else (rival-spark being, Maia, primordial)?
8. **Dark Sisters mechanics** — separate faith, or tenet-swap on `aeluran_weavers`? Do Dökkálfar (male Aeluran priests?? — base Aeluran order is all-female) get male clergy? How does "competes to gain rank" work?
9. **Drow matriarchy vs implementation** — `martial_custom_male_only` on both cultures contradicts Drow matriarchy. Switch Drow to female-preferred/only martial + inheritance?
10. **Language** — keep `language_high_elven`, or revive a `language_dark_elven` pillar? What does the dialect look/sound like?
11. **The blood stone** — was it ever completed? (Deliberately open in loc.) Is it a plannable artifact/quest MacGuffin?
12. **Aji Saka's return** — body never recovered: planned revival like Hekla, or just flavor?
13. **Yr'tenei's house** — carries Drenmyre, reads Rynvela. Reassign?
14. **The four-enclave map** — final? (Drow: Guinea + Kamarupa; Dökkálfar: Iceland + Sápmi.) The canon table also seats Syldranis at "the foot of the Himalayas" and Myrvessa "south coast of Africa" — do current title placements match your intent?
15. **The Wraith Wood** — canonize as a Dark Elf site (twisted creatures)?
16. **MAA identity** — melee-only ferocity (no archers) vs shadow-archer fantasy; what maintenance resource for blood-magic units (dread? prisoners? dark piety)?
17. **Community canon review** — does ANY of yanush_1945's parallel setting (Moringotto, Kessertine/Nocturna/Druhaar, Orb of the Dark Dreamer, "Descent" ladder) get adopted, mined for pieces, or set aside entirely?
18. **Tier lore text** — should dark tiers keep aliasing light names (current design) but gain their own descriptions? Any dark-specific Ascension narrative ("the Descent"? — currently a [COMM] term only)?

---

## Appendix A — Community parallel setting (yanush_1945) [COMM — NOT CANON]

Recorded for mining; Eastpointed gave only light acknowledgment ("Some good cooking in here", "👀") and adopted none of its names. Threads: `#📜lore-crafting` (Kessertine/Nocturna/Druhaar/Rise of Darkness), `#💡feedback-suggestions` (Gifts of the Ruinous Powers).

- **Prophecy "Tyranny Over The Sun":** "When the Sun is stained with blood three times, darkness will rise to eclipse the light and return Eternal Night to the world." Three clan Progenitors in the Realm of Shadows found **Moringotto**'s (Dark Aratar, Deity of Darkness and Strife) prophecy, touched the **Orb of the Dark Dreamer**, were rejected and cursed into the **first Dark Elves** — plus "Living Forever" as spirit projections.
- **Denominations:** Cult of the Great One (ascetic dark dreams); The Dark Dreamer (patron of thieves/murderers/intriguers); Moringotto Temple (open darkness-worship, mortal sacrifice, "Elevation").
- **Houses:** **Kessertine** (fanatic radicals; founder Elric Kessertine sold his soul for the "Dark Dreamer's Army"; underground fortress in Wallachia; ruled by "the Listener"; pale/black-haired/red-eyed; motto "For our salvation is in darkness") · **Nocturna** (dream-scholars; black skin, purple eyes, masks; Ritual of Dreaming, Trial of the Justicar, decennial Feast) · **Druhaar** (cynical slaver-raiders who blame Moringotto yet use his gifts; founder Astarion "The Witch King"; Path of Darkness initiation at 16, dueling, victory orgies).
- **10-stage "Descent" ladder:** Dhra'kor → N'kar → Zra'kryn → Vor'kai → Lysander → Ti'londar → Eri'dor → Azra'gel → Kel'vors → Dark Aratar ("Disembodiment").
- **Artifacts:** Orb/Scepter of the Dark Dreamer, Blood Tiara, Shadow Blade, Tome of Dark Spells, Soul Marble; expedition "In Search of the Orb of the Dark Dreamer" (Wallachia) ending with the player's retinue becoming Dark Elves.
- **Orders/sites:** Justiciar Order of the Dark Dreamer (founder Shar'Tyris); **Ril'Narath** the Dark Spire (restorable magic school); "Gifts of the Ruinous Powers" tribute system (five Demonic Entities + Mother Ungoliant, Weaver of Fates + Zigur the Sorcerer).
- Eastpointed's only substantive uptakes from these threads: "purple is just the best color"; slavery timing; asking what a House Nocturna bloodline trait should do.

## Appendix B — Source map

| Source | What it holds | Best paths |
|---|---|---|
| Discord export | THE canon spec (Dark Elf Alpha threads); all Eastpointed rulings | `elf-destiny-discord-bot\output\message-history.md` ~351582–354214 |
| lore-master | Synthesized docs; canon hierarchy in CLAUDE.md; **dark-elves.md is stale** | `elf-destiny-lore-master\{dark-elves,eastpointed-canon,future-and-planned-lore,unanswered-questions}.md` |
| Live wiki | Public prose (dark-elves page 677 words); shared-world pages | `elf-destiny-wiki\docs\lore\` |
| Elf Destiny | All canonical site/character loc; religions/traditions/MAA framework; brainstorm docs; orphan `dark_elf_1..4` trait stubs | `localization\english\activities\expeditions\…`, `_docs\brainstorm\` |
| Dark Elf Beta | Implemented race system, houses, cultures, characters, appearance | `common\`, `history\characters\`, `localization\english\` |
| ED Dark Elves Prototype | House prose origins; blood-magic/oath/mutation-pit design docs; abandoned Empath house; snake/spider art | `dark_elves.md`, `bloodline_balancing.md`, `racial implementation.md` |
| Dark Destiny | Alt take: Norse-flavored `dark_elf` culture + own language pillar + red-eyed ethnicity. Local folder stripped (published Workshop content id 3114064450 not present) | `common\culture\` |
| skin prototype | Throwaway skin test rig; Empath orphan keys | — |
| modkit | Implementation/verification record; tinder-import provenance | `reports\proposals\2026-08-17-dark-elf-race-verified.md`, `scenarios\` |
| ed_relig | 2023 religion master doc: blood magic category, witches→vampires, Void factions, Black Tower | `README.md` |

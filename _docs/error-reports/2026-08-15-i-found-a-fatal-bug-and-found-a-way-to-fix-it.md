# I found a fatal bug and found a way to fix it
**Tags:** CK3, Ongoing Issue, Sev 1 - Crashes Game
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1538251608784379985)
---
## Report
**thebigsussler** · *2026-08-15*
Bug report: New game crashes every time on start with Elf Destiny enabled with New Bookmarks+ (base mod only, freshly resubscribed, no submods).

error.log shows:
[E][genedatabase.cpp:789]: duplicate gene template index 0, at file: common/genes/10_genes_special_misc.txt line: 42
[E][genedatabase.cpp:789]: duplicate gene template index 0, at file: common/genes/10_genes_special_misc.txt line: 51
[E][genedatabase.cpp:789]: duplicate gene template index 0, at file: common/genes/10_genes_special_misc.txt line: 60

Because of this, race_gene_elf_ears_1, race_gene_elf_ears_2, and gene_special_skin_color fail to register at all, which then causes thousands of "missing gene" errors across every DNA file in the game (including Elf Destiny's own great_house_*.txt files) and a hard crash when the game tries to build character portraits at new game start. Also seeing:
[E][genedatabase.cpp:677/680]: could not find attribute "bs_elf_ears"

found the actual root cause, not just symptoms.

common/genes/elf_genes.txt sets the attribute for both race_gene_elf_ears_1 and race_gene_elf_ears_2 to "bs_elf_ears":
setting = { attribute = "bs_elf_ears" value = { min = 0.0 max = 0.5 } ... }

But checking the actual mesh files:
- male_bs_elf_ears.mesh — internal blend shape name is "MeshShape" (generic placeholder, not elf-specific)
- female_bs_elf_ears.mesh — internal blend shape name is "elfShape" (close, but doesn't match "bs_elf_ears" either)

Neither mesh actually contains a shape named "bs_elf_ears", so the attribute lookup fails every time — that's the source of:
[E][genedatabase.cpp:677/680]: could not find attribute "bs_elf_ears"

This cascades into every elf gene failing to register, which crashes new game creation entirely (character portrait building fails for the whole game world, not just elf characters).

Looks like the mesh files were exported without renaming the blend shape target to match the gene script. Should be a quick fix on your end either rename the blend shape in the source file and re export or update elf_genes.txt to reference whatever the actual exported shape names are (though male's generic 'MeshShape' name suggests that one may need re-exporting regardless). Happy to test a fix if you push one.

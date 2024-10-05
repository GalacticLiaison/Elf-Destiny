# Beta_v1.4.3

- Changed Julius Serelion back to Roman culture
- Ascended Tribal (Why is it always you?)
    - Now ALL Elf Lords with the culture tradition become Ascended Tribal not just the player and their vassals.
    - The AI will no longer choose to go back to Tribal after getting Ascended Tribal!
- Elf Age
    - Nerfed the Age of Mortal Elves!
        - previously elves would stay immortal to 100 + their trait bonus. So for example, "High Elves" would live 100 + 50 = 150 years before becoming mortal
        - 100 is a bit unrealistic for an average lifespan so now its reduced to 65 + trait bonus
        - Note: Even when Elves have become mortal again at the end of their life, they often still live a good long while because they stacked so many health bonuses throughout their life! We'll keep an eye on things and see how this change feels!
    - Fixed an issue where Elves that had reached end of life and became mortal again would not return to immortality when Ascending to a higher elf level and still being an age in that new elf level trait's window of immortality.
- Fixed bug with Elf Trait Inheritance
    - using an additive total instead of an average when determining "Elf Score" to avoid division errors
    - also added a fallback to just double mothers elf score if no real father is found
// priority: 0

const s1 = "stage1"
const s2 = "stage2"
const s3 = "stage3"
const s4 = "stage4"
const s5 = "stage5"
const s6 = "stage6"
const s7 = "stage7"

ServerEvents.recipes(event => {
    function StagedShapedCrafting(output, pattern, key, stage) {
        let staged_recipe = {
            type: "recipestages:stage",
            stage: stage,
            recipe: {
                type: "minecraft:crafting_shaped",
                pattern: pattern,
                key: key,
                result: output
            }
        };
        event.custom(staged_recipe)
    }

    function StagedShapelessCrafting(output, inputs, stage) {
        let ingredients = inputs.map(raw => Ingredient.of(Item.of(raw)))
        let staged_recipe = {
            type: "recipestages:stage",
            stage: stage,
            shapeless: true,
            recipe: {
                type: "minecraft:crafting_shapeless",
                ingredients: ingredients,
                result: output
            }
        };
        event.custom(staged_recipe)
    }

    /* Sample of Adding StagedShapedCrafting
    StagedShapedCrafting(
        Item.of('minecraft:furnace'),
        [
            'SSS',
            'S S',
            'SSS'
        ],
        {
            S: Item.of('minecraft:stone')
        },
        "stage1"
    )
    */

    /* Sample of Adding StagedShapelessCrafting
    StagedShapelessCrafting(
        Item.of('minecraft:furnace'),
        ['minecraft:diamond_block', 'minecraft:nether_star'],
        "stage1"
    )
    */

    StagedShapedCrafting(
        Item.of('undergarden:catalyst'),
        ['D D',' A ','D D'],
        {
            A: Item.of('minecraft:iron_block'),
            D: Item.of('minecraft:diamond_block')
        },
        s1
    )

    StagedShapelessCrafting(
        Item.of('undergarden:catalyst'),
        ['minecraft:diamond_block', 'minecraft:nether_star'],
        s1
    )
})
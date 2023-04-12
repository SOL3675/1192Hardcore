import mods.recipestages.Recipes;

public class RecipeStage0 {
    public static register() as void {
        Recipes.addShaped(Globals.stageName[0], "crafting_table_s0",
            <item:minecraft:crafting_table>,
            [
                [<item:natprog:bone_knife>, <item:terraqueous:hammer>],
                [<tag:items:forge:stripped_logs>, <item:natprog:flint_hatchet>]
            ]
        );

        Recipes.addShaped(Globals.stageName[0], "hammer_s0",
            <item:terraqueous:hammer>,
            [
                [<tag:items:forge:cobblestone>],
                [<tag:items:minecraft:planks>]
            ]
        );
    }
}
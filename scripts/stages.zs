#priority 9000

import stdlib.List;

public class Stages {
    public static var stage = new List<Stage>();

    public static addStages() as void {
        for sName in Globals.stageName {
            this.stage.add(new Stage(sName));
        }

        this.stage[0].addItems(new ItemStage0().items);
        this.stage[0].restrictStage();

        this.stage[1].addItems(new ItemStage1().items);
        this.stage[1].restrictStage();
    }

    public static addStagedRecipes() as void {
        RecipeStage0.register();
    }
}

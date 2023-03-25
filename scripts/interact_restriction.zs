# priority 9999

import stdlib.List;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.tag.manager.type.KnownTagManager;
import mods.gamestages.StageHelper;

public class InteractRestriction {
    public static register() as void {
        CTEventManager.register<RightClickBlockEvent>((event) => {
            var player = event.getPlayer();
            var blockPos = event.getHitVec().getBlockPos();
            var blockResource = player.level.getBlockState(blockPos).block.asItem().getRegistryName();

            for stage in Stages.stage {
                if (blockResource in (stage.tag)) {
                    if (!player.hasGameStage(stage.stageName)) {
                        event.cancel();
                    }
                }
            }
        });
    }
}
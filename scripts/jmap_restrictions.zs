import mods.jmapstages.JMapStages;

public class JMapRestriction {
    public static register() as void {
        JMapStages.setFullscreenStage(Globals.stageJMapName);
        JMapStages.setMinimapStage(Globals.stageJMapName);
        JMapStages.setWaypointStage(Globals.stageJMapName);
        JMapStages.setDeathpointStage(Globals.stageJMapName);
    }
}

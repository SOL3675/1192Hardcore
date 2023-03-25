# priority 9999

import stdlib.List;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.mod.Mod;

public class ItemStage1 {
    public var items = new List<IItemStack>();

    val constItemList = [
        <item:minecraft:apple>
    ] as IItemStack[];

    val rootsItems = loadedMods.rootsclassic.getItemStacks();

    public this() as void {

        for item in this.constItemList {
            this.items.add(item);
        }

        for item in this.rootsItems {
            this.items.add(item);
        }
    }
}
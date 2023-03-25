#priority 9999

import stdlib.List;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;

public class Stage {
    public var stageName as string;
    public var tag as KnownTag<ItemDefinition>;
    public var items = new List<IItemStack>();

    public this(stageName as string) as void {
        this.stageName = stageName;
        this.tag = <tagmanager:items>.tag("stage:" + stageName);
    }

    public addItems(items as IItemStack[]) as void {
        for item in items {
            this.items.add(item);
        }
        this.tag.add(items);
    }

    public restrictStage() as void {
        for item in this.items {
            val rt = ItemStages.restrict(item, this.stageName);
            rt.preventInventory(false);
            rt.preventPickup(false);
        }
    }
}
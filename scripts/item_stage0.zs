# priority 9999

import stdlib.List;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.mod.Mod;

public class ItemStage0 {
    public var items = new List<IItemStack>();

    val constItemList = [
        <item:toughasnails:empty_canteen>,
        <item:toughasnails:dirty_water_canteen>,
        <item:toughasnails:water_canteen>,
        <item:toughasnails:purified_water_canteen>
    ] as IItemStack[];

    public this() as void {
        
        for item in this.constItemList {
            this.items.add(item);
        }
        
    }
}
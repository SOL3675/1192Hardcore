#loader initialize

#priority 9999

import mods.itemstages.ItemStages;
import crafttweaker.api.item.IItemStack;

val stage_names = [
    "stage0",
    "stage1",
    "stage2",
    "stage3",
    "stage4",
    "stage5",
    "stage6",
    "stage7"
] as string[];

val stage_tags = [
    <tag:stage:stage0>,
    <tag:stage:stage1>,
    <tag:stage:stage2>,
    <tag:stage:stage3>,
    <tag:stage:stage4>,
    <tag:stage:stage5>,
    <tag:stage:stage6>,
    <tag:stage:stage7>,
]

public class Stage {
    public var stageName as string;
    public var tag as tags;
    public var items = new stdlib.List<IItemStack>();

    public this(stageName as string, stageTag as tags) as void {
        this.stageName = stageName;
        this.tag = stageTag;
    }

    public addItem(item as IItemStack) as void {
        this.items.add(item);
    }

    public addItems(items as IItemStack[]) as void {
        for item in items {
            this.items.add(item);
        }
    }

    public addTags() as void {
        for item in this.items {
            this.tag.addId(item);
        }
    }

    public restrictStage() as void {
        for item in this.items {
            ItemStages.restrict(item, this.stageName);
        }
    }
}

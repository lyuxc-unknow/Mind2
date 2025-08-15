ServerEvents.recipes(event => {
    let {modular_machinery_reborn} = event.recipes
    modular_machinery_reborn.machine_recipe("mind:matter_tranformater",30)
        .requireHeight("[150,300)",10,18)
        .requireItem("mind:conversion_media",10,0)
        .requireItem("mekanism:pellet_antimatter",28,0)
        .requireItem('8x avaritia:neutron_nugget',46,0)
        .requireSource(10000,28,18)
        .produceItem('projecte:dark_matter',100,9)
        .width(120)
        .height(40)
        .progressX(70)
})
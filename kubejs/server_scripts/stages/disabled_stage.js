ServerEvents.recipes(event => {
    let disabled_items = [
        'wands:creative_wand', 
        'create:handheld_worldshaper', 
        'enderdrives:ender_disk_creative', 
        'integrateddynamics:energy_battery_creative', 
        'psi:cad_assembly_creative', 
        'mekanismadvancedgenerators:creative_energy_tablet', 
        'mekanismadvancedgenerators:creative_solar_element', 
        'modularrouters:creative_module', 
        'draconicevolution:creative_capacitor', 
        'mysticalagriculture:flight_augment', 
        'psi:cad_assembly_creative'
    ]
    
    AStages.addRestrictionForItem("mind/disabled_stage","disabled_stage",disabled_items)
            .setHideInJEI(true)
})
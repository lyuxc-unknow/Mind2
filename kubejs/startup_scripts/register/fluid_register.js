StartupEvents.registry("fluid", (event) => {
    let fluid_map = new Map([
        ["black_fluid","#FF000000"],
        ["industrial_lubricants","#FFFFD711"]
    ]);
    fluid_map.forEach((value,key) => {
        event.create(`mind:${key}`,"thin").tint(value)
    })
});

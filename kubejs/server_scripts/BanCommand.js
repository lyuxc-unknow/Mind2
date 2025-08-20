ServerEvents.command(event => {
    let commandList = [
        "fly",
        "ftbquests",
        "heal"
    ]
    commandList.forEach(command => {
        if(event.commandName === command) {
            event.cancel()
        }
    })
})
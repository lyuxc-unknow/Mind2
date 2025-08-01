let $KeyMapping = Java.loadClass("net.minecraft.client.KeyMapping")
let $GLFW = Java.loadClass("org.lwjgl.glfw.GLFW")

global.cthandKey = new $KeyMapping(
    "key.mind.ct_hand",
    $GLFW.GLFW_KEY_F12,
    "key.categories.inventory"
)

NativeEvents.onEvent("net.neoforged.neoforge.client.event.RegisterKeyMappingsEvent", event => {
    event.register(global.cthandKey)
})

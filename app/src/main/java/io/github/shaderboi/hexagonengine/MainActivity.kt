package io.github.shaderboi.hexagonengine

import org.libsdl.app.SDLActivity

class MainActivity : SDLActivity() {

    override fun getLibraries(): Array<String> {
        return arrayOf("SDL2", "SDL2_image", "main")
    }
}

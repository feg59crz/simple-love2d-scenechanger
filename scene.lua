function ChangeScene(path, scene)
    Scene = Scene or {}
    if Scene.clean then Scene:clean() end

    newscene = path .. "." .. scene
    package.loaded[newscene] = false
    Scene = require(newscene)
    print(Scene.draw)
    if Scene.load then Scene:load() end
end

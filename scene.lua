function ChangeScene(path, scene)
    Scene = nil
    Scene = require(path .. "." .. scene)
    if Scene.load then Scene:load() end
end

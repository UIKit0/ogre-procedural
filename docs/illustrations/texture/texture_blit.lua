buffer = Procedural.TextureBuffer(128)
Procedural.Image(buffer):setFile("red_brick.jpg"):process()
Procedural.Blit(buffer):setInputBuffer(bufferGradient):setInputRect(0.0, 0.0, 0.5, 0.5):setOutputRect(0.25, 0.25, 0.75, 0.75):process()
tests:addTextureBuffer(buffer)
dotfile = tests:getDotFile("texture_31", "Blit_Demo")
dotfile:set("Image", "texture_image", "Gradient", "texture_gradient", "Blit", "texture_blit")

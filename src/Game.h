#pragma once

#include "Chunk.h"
#include "GUI.h"
#include "Graphics/GLWrappers.h"
#include "Maths.h"
#include <SFML/System/Clock.hpp>
#include <SFML/Window/Window.hpp>
#include <atomic>
#include <iostream>
#include <mutex>
#include <queue>
#include <thread>
#include <vector>

class Keyboard;

struct Sun {
    Transform t;
    int orbitRadius = CHUNK_SIZE * 4;
    int orbitSpeed = 8000;
    void update(float time)
    {
        float rads = (2.0f * 3.14159f / orbitSpeed * time);
        t.position.x = CHUNK_SIZE * 10 + sin(rads) * orbitRadius;
        t.position.z = CHUNK_SIZE * 10 + cos(rads) * orbitRadius;
    }
};

class Game {

  public:
    Game();
    ~Game();

    void onInput(const Keyboard& keyboard, const sf::Window& window, bool isMouseActive);

    void onUpdate();

    void onRender();

    void onGUI();

  private:
    void renderScene(const glm::mat4& projectionViewMatrix);
    void renderWater(const glm::mat4& projectionViewMatrix);

    void prepareChunkRender(const glm::mat4& projectionViewMatrix);
    void renderChunks(std::vector<Renderable>& renderList);

    void runTerrainThread();

    Shader m_sceneShader;
    Shader m_voxelShader;
    Shader m_waterShader;

    VertexArray m_terrain;
    VertexArray m_lightCube;

    Texture2D m_texture;
    TextureArray2D m_textureArray;

    Framebuffer m_refractFramebuffer;
    const Texture2D* m_refractTexture = nullptr;

    Framebuffer m_reflectFramebuffer;
    const Texture2D* m_reflectTexture = nullptr;

    Sun m_sun;
    Transform m_cameraTransform;
    Transform m_quadTransform;

    glm::mat4 m_projectionMatrix;

    sf::Clock m_timer;

    // Chunk render stuff

    std::vector<VertexArray> m_chunkVertexArrays;
    std::vector<Renderable> m_chunkUnderWaterRenderList;
    std::vector<Renderable> m_chunkAboveWaterRenderList;
    VertexArray m_waterQuad;
    Texture2D m_waterTexture;

    ChunkMap m_chunkMap;
    std::queue<ChunkMesh> m_chunkMeshQueue;
    std::queue<ChunkPosition> m_chunkReadyForMeshingQueue;
    std::queue<ChunkPosition> m_chunkUpdateQueue;
    std::mutex m_chunkVectorLock;
    std::mutex m_chunkUpdateLock;
    std::thread m_chunkMeshGenThread;
    std::atomic_bool m_isRunning{true};

    bool m_doReflection = false;
    bool m_doRefraction = false;

    SpriteRenderer m_guiTexture;
};

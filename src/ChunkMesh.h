#pragma once

#include <glad/glad.h>
#include <glm/glm.hpp>
#include <vector>

#include "Chunk.h"

// Regular vertex except it uses a 3D texture so that it can support OpenGL 2D Texture Arrays
struct VoxelVertex {
    glm::vec3 position{0.0f};
    glm::vec3 textureCoord{0.0f};
    glm::vec3 normal{0.0f};
};

struct VoxelMeshFace {
    std::array<glm::ivec3, 4> vertexPositions;
    glm::vec3 normal;
};

struct ChunkMesh {
    std::vector<VoxelVertex> vertices;
    std::vector<GLuint> indices;

    int chunkY;

    GLsizei indicesCount = 0;

    void addVoxelFace(const VoxelMeshFace& face, const ChunkPosition& chunkPos, const VoxelPosition& position,
                      GLfloat textureId);
};

ChunkMesh createChunkMesh(const Chunk& chunk);
ChunkMesh createGrassCubeMesh();

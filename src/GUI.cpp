#include "GUI.h"

#include "Maths.h"
#include "Utility.h"
#include <nuklear/nuklear_def.h>
#include <nuklear/nuklear_sfml_gl3.h>

#define MAX_VERTEX_MEMORY 0x80000
#define MAX_ELEMENT_MEMORY 0x80000

struct nk_context* ctx;
sf::Clock fpsClock;
float frames = 0;
float fps;
float frameTime = 0;

const sf::Window* p_window = nullptr;

int window_flags = 0;

void guiInit(sf::Window& window)
{
    window_flags |= NK_WINDOW_BORDER;
    window_flags |= NK_WINDOW_SCALABLE;
    window_flags |= NK_WINDOW_MOVABLE;
    window_flags |= NK_WINDOW_NO_SCROLLBAR;
    window_flags |= NK_WINDOW_SCALE_LEFT;
    window_flags |= NK_WINDOW_MINIMIZABLE;
    p_window = &window;
    // set_style(ctx, THEME_WHITE);
    ctx = nk_sfml_init(&window);
    {
        struct nk_font_atlas* atlas;
        nk_sfml_font_stash_begin(&atlas);
        /*struct nk_font *droid = nk_font_atlas_add_from_file(atlas,
         * "../../../extra_font/DroidSans.ttf", 14, 0);*/
        nk_sfml_font_stash_end();
    }
    // nk_set_style(ctx, THEME_DARK);
}

void guiShutdown(void)
{
    nk_sfml_shutdown();
}

void guiBeginFrame(void)
{
    nk_input_begin(ctx);
    frames++;
    if (fpsClock.getElapsedTime().asSeconds() >= 1.0f) {
        fps = frames;
        frameTime = (float)fpsClock.getElapsedTime().asMilliseconds() / frames;

        fpsClock.restart();
        frames = 0;
    }
}

void guiProcessEvent(sf::Event& event)
{
    nk_sfml_handle_event(&event);
}

void guiEndFrame(void)
{
    if (p_window->isOpen()) {
        nk_sfml_render(NK_ANTI_ALIASING_ON, MAX_VERTEX_MEMORY, MAX_ELEMENT_MEMORY);
    }
}

void guiDebugScreen(const Transform& transform)
{
    if (nk_begin(ctx, "Debug Window", nk_rect(10, 10, 400, 160), window_flags)) {
        nk_layout_row_dynamic(ctx, 25, 1);
        nk_labelf(ctx, NK_STATIC, "Player Position: (%f %f %f)", transform.position[0], transform.position[1],
                  transform.position[2]);

        nk_layout_row_dynamic(ctx, 25, 1);
        nk_labelf(ctx, NK_STATIC, "Player Rotation: (%f %f %f)", transform.rotation[0], transform.rotation[1],
                  transform.rotation[2]);

        nk_layout_row_dynamic(ctx, 25, 1);

        nk_labelf(ctx, NK_STATIC, "FPS: %f", fps);
        nk_labelf(ctx, NK_STATIC, "Frame Time: %f", frameTime);
    }
    nk_end(ctx);
}

void guiGraphicsOptions(bool* doReflection, bool* doRefraction)
{
    int reflect = *doReflection;
    int refract = *doRefraction;

    if (nk_begin(ctx, "Graphics Options", nk_rect(10, 170, 200, 100), window_flags)) {
        nk_layout_row_dynamic(ctx, 25, 1);
        nk_checkbox_label(ctx, "Reflection Enabled", &reflect);

        nk_layout_row_dynamic(ctx, 25, 1);
        nk_checkbox_label(ctx, "Refractions Enabled", &refract);
    }
    nk_end(ctx);

    *doReflection = reflect;
    *doRefraction = refract;
}

SpriteRenderer::SpriteRenderer()
{
    glm::mat4 orthoMatrix{1.0f};
    orthoMatrix = glm::ortho(0.0f, (float)WIDTH, 0.0f, (float)HEIGHT, -1.0f, 1.0f);
    m_guiShader.loadFromFile("GUIVertex.glsl", "GUIFragment.glsl");
    m_guiBorder.loadFromFile("GUIBorder.png");

    m_guiShader.bind();
    m_guiShader.set("orthographicMatrix", orthoMatrix);
    m_guiShader.set("guiTexture", 0);
    m_guiShader.set("borderTexture", 1);
}

void SpriteRenderer::render(const Texture2D& texture, float x, float y, float width, float height)
{
    // glEnable(GL_BLEND);
    texture.bind(0);
    m_guiBorder.bind(1);
    m_guiShader.bind();

    glm::mat4 modelMatrix{1.0f};
    modelMatrix = glm::translate(modelMatrix, {x, y, 0});
    modelMatrix = glm::scale(modelMatrix, {width, height, 1.0});
    m_guiShader.set("transform", modelMatrix);

    m_guiQuad.getRendable().drawArrays(6);
    // glDisable(GL_BLEND);
}
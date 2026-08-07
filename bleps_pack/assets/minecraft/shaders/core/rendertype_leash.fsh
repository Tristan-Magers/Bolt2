#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:globals.glsl>

#moj_import <minecraft:eg_custom_leash/leash_texture.glsl>
#moj_import <minecraft:eg_custom_leash/main.fsh>

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
flat in vec4 vertexColor;

out vec4 fragColor;

void main() {
    fragColor = apply_fog(drawLeashTextureIfEnabled(vertexColor), sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}

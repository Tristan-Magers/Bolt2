#if USE_SIMPLE_COLOURS == 0
    in vec2 leashTexCoord;
#endif
flat in int isLeash;

ivec2 pixelateUV(vec2 uv, vec2 resolution) {
    return ivec2(abs(floor(uv * resolution)));
}

vec4 drawLeashTextureIfEnabled(vec4 originalColour) {
    if(isLeash == 0) return originalColour;

    #if USE_SIMPLE_COLOURS == 0
        vec2 uv = fract(leashTexCoord * vec2(REPEAT_X, REPEAT_Y));
        ivec2 integerUV = pixelateUV(uv, vec2(TEXTURE_WIDTH, TEXTURE_HEIGHT));
        int bitmapIndex = clamp(integerUV.x + (TEXTURE_WIDTH * integerUV.y), 0, BITMAP.length());

        vec4 color = PALETTE[BITMAP[bitmapIndex]];

        if(color.a < 0.1) {
            discard;
        }

        return color * originalColour;
    #else
        return originalColour;
    #endif
}
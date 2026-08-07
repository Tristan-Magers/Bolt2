#define VANILLA_LEASH_COLOUR_1 vec3(0.498039, 0.4, 0.298039)
#define VANILLA_LEASH_COLOUR_2 vec3(0.34902, 0.278431, 0.207843)

#if USE_SIMPLE_COLOURS == 0
    out vec2 leashTexCoord;
#endif
flat out int isLeash;

bool rougheq(vec3 color, vec3 target) {
    return all(lessThan(abs(color-target),vec3(0.0001)));
}

vec4 modifyVertexColour(vec4 colourAttribute) {
    isLeash = 0;

    #if USE_SIMPLE_COLOURS == 1
        if(rougheq(colourAttribute.rgb, VANILLA_LEASH_COLOUR_1)) {
            return vec4(COLOUR_1, colourAttribute.a);
        } else if(rougheq(colourAttribute.rgb, VANILLA_LEASH_COLOUR_2)) {
            return vec4(COLOUR_2, colourAttribute.a);
        }
    #else
        isLeash = (rougheq(colourAttribute.rgb, VANILLA_LEASH_COLOUR_1) || rougheq(colourAttribute.rgb, VANILLA_LEASH_COLOUR_2)) ? 1 : 0;
        if(isLeash <= 0) return colourAttribute;

        bool otherHalf = mod(gl_VertexID, 100.0) > 49.0;
        // calculate horizontal texture coordinates
        leashTexCoord = vec2(0.0);
        leashTexCoord.x = mod(gl_VertexID / 2, 25) / 25.0;
        if(otherHalf && MIRROR_ONE_HALF == 0) {
            // offset and inverse the x for the other half of the lead
            leashTexCoord.x = 1 - (leashTexCoord.x + (2.0/50.0));
        }
        // calculate vertical texture coordinates
        leashTexCoord.y = mod(gl_VertexID + (otherHalf ? 1 : 0), 2);

        return vec4(1.0, 1.0, 1.0, colourAttribute.a);
    #endif
}
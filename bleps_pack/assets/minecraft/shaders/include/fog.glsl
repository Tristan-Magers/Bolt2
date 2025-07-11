#version 150

layout(std140) uniform Fog {
    vec4 FogColor;
    float FogEnvironmentalStart;
    float FogEnvironmentalEnd;
    float FogRenderDistanceStart;
    float FogRenderDistanceEnd;
    float FogSkyEnd;
    float FogCloudsEnd;
};

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
    if (vertexDistance <= fogStart) {
        return 0.0;
    } else if (vertexDistance >= fogEnd) {
        return 1.0;
    }

    return (vertexDistance - fogStart) / (fogEnd - fogStart);
}

float total_fog_value(float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmantalEnd, float renderDistanceStart, float renderDistanceEnd) {
    return max(linear_fog_value(sphericalVertexDistance, environmentalStart, environmantalEnd), linear_fog_value(cylindricalVertexDistance, renderDistanceStart, renderDistanceEnd));
}

vec4 apply_fog(vec4 inColor, float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmantalEnd, float renderDistanceStart, float renderDistanceEnd, vec4 fogColor) {
    float fogValue = total_fog_value(sphericalVertexDistance, cylindricalVertexDistance, environmentalStart, environmantalEnd, renderDistanceStart, renderDistanceEnd);

    float fogStart = environmentalStart;
    float fogEnd = environmantalEnd;
    float vertexDistance = sphericalVertexDistance;

    if((fogColor.r + 0.02 < fogColor.g && fogColor.r + fogColor.g > 1.45) || fogStart >= fogEnd || fogEnd <= 10 || (fogColor.r + fogColor.b + fogColor.g < 1.0) || (fogColor.b > fogColor.g && fogColor.b > fogColor.r && fogColor.b - fogColor.g < 0.19 && fogColor.g - fogColor.r < 0.16 && fogColor.g - fogColor.r > 0.0 && fogColor.b - fogColor.g > 0.0)) {
		if (vertexDistance <= fogStart) {
			return inColor;
		}
		
		float fogValue = vertexDistance < fogEnd ? smoothstep(fogStart, fogEnd, vertexDistance) : 1.0;
		return vec4(mix(inColor.rgb, fogColor.rgb, fogValue * fogColor.a), inColor.a);
	} else {
        if ((fogEnd < 20 && fogColor.r + fogColor.b + fogColor.g < 0.9) || ((fogEnd > 100) || (fogEnd <= 100 && fogStart > 27.5)) && !(fogColor.r > 0.78 && (fogColor.r/fogColor.g >= 0.975 && fogColor.r/fogColor.g <= 1.04))) {
            float fStart = -22;
            float fEnd = 88;
            vec4 fColor = vec4(0.52,0.62,0.92,1.0);
            if (vertexDistance <= fStart) {
			    return inColor;
		    }
		
            float fogValue = vertexDistance < fEnd ? smoothstep(fStart, fEnd, vertexDistance) : 1.0;
            return vec4(mix(inColor.rgb, fColor.rgb, fogValue * fColor.a), inColor.a);
        }
        else {
            float fStart = -10;
            float fEnd = 24;
            vec4 fColor = vec4(0.28,0.25,0.3,1.0);
            if (vertexDistance <= fStart) {
                return inColor;
            }
            
            float fogValue = vertexDistance < fEnd ? smoothstep(fStart, fEnd, vertexDistance) : 1.0;
            return vec4(mix(inColor.rgb, fColor.rgb, fogValue * fColor.a), inColor.a);
        }
		
	}

    return vec4(mix(inColor.rgb, fogColor.rgb, fogValue * fogColor.a), inColor.a);
}

float fog_spherical_distance(vec3 pos) {
    return length(pos);
}

float fog_cylindrical_distance(vec3 pos) {
    float distXZ = length(pos.xz);
    float distY = abs(pos.y);
    return max(distXZ, distY);
}

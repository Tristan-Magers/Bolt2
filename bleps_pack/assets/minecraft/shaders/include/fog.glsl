#version 150

vec4 linear_fog(vec4 inColor, float vertexDistance, float fogStart, float fogEnd, vec4 fogColor) {
	if((fogColor.r + 0.02 < fogColor.g && fogColor.r + fogColor.g > 1.45) || fogStart >= fogEnd || fogStart <= 1 || fogEnd <= 10 || (fogColor.r + fogColor.b + fogColor.g < 1.0) || (fogColor.b > fogColor.g && fogColor.b > fogColor.r && fogColor.b - fogColor.g < 0.19 && fogColor.g - fogColor.r < 0.16 && fogColor.g - fogColor.r > 0.0 && fogColor.b - fogColor.g > 0.0)) {
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
}

float linear_fog_fade(float vertexDistance, float fogStart, float fogEnd) {
    if (vertexDistance <= fogStart) {
        return 1.0;
    } else if (vertexDistance >= fogEnd) {
        return 0.0;
    }

    return smoothstep(fogEnd, fogStart, vertexDistance);
}

float cylindrical_distance(mat4 modelViewMat, vec3 pos) {
    float distXZ = length((modelViewMat * vec4(pos.x, 0.0, pos.z, 1.0)).xyz);
    float distY = length((modelViewMat * vec4(0.0, pos.y, 0.0, 1.0)).xyz);
    return max(distXZ, distY);
}


float fog_distance(vec3 pos, int shape) {
    if (shape == 0) {
        return length(pos);
    } else {
        float distXZ = length(pos.xz);
        float distY = abs(pos.y);
        return max(distXZ, distY);
    }
}

// precision comes in high, low, and medium 'p'
// low is rarely used due to bugs it can cause, medium is most used, high is best but least performant (doesn't work on all devices)
precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

varying float vRandom;
varying vec2 vUv;
varying float vElevation;

void main() {
    vec4 textureColor = texture2D(uTexture, vUv);
    textureColor.rgb *= vElevation * 2.0 + .75;
    gl_FragColor = textureColor;

    gl_FragColor = vec4(vUv * vUv, vRandom, 1.0);
}
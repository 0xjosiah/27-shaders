// precision comes in high, low, and medium 'p'
// low is rarely used due to bugs it can cause, medium is most used, high is best but least performant (doesn't work on all devices)
precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

varying float vRandom;
varying vec2 vUv;

void main() {
    vec4 textureColor = texture2D(uTexture, vUv);
    gl_FragColor = textureColor;
}
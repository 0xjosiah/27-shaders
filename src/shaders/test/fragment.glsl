// precision comes in high, low, and medium 'p'
// low is rarely used due to bugs it can cause, medium is most used, high is best but least performant (doesn't work on all devices)
precision mediump float;
uniform vec3 uColor;


varying float vRandom;

void main() {
    gl_FragColor = vec4(uColor, 1.0);
}
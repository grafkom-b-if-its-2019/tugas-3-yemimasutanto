precision mediump float;
#define pi 3.14
attribute vec2 vPosition;
// attribute vec3 vColor;
// varying vec3 fColor; // fragment shader
uniform float sudut;
uniform float scale;

//trf nilai vCo ke fCo
void main() {
  // fColor = vColor;
  gl_Position = vec4(vPosition, 0.0, 1.0); //wajib diisi
  // p' = p
  // p' = T * p
  //float sudut=0.5*pi;
  mat4 rotasi = mat4(
    cos(sudut), -sin(sudut), 0.0, 0.0,
    sin(sudut), cos(sudut), 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  // gl_Position = gl_Position * rotasi;

  mat4 skalasi = mat4(
    scale, 0.0, 0.0, 0.0,
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );

  mat4 translasi = mat4(
    1.0, 0.0, 0.0, 0.25,
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );

  gl_Position = gl_Position * skalasi * translasi;
  
}

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
<canvas id="canvas" width="300" height="300"></canvas>

<script type="importmap">
		{
			"imports": {
				"three": "https://unpkg.com/three@0.141.0/build/three.module.js",
				"GLTFLoader" : "https://unpkg.com/three@0.141.0/examples/jsm/
				loaders/GLTFLoader.js"
			}
		};
	</script>

<script type="module">
import {GLTFLoader} from 'GLTFLoader';
import * as THREE from 'three';

let scene = new THREE.Scene();
let renderer = new THREE.WebGLRenderer({
	canvas : document.querySelector('#canvas')
});

let loader = new GLTFLoader();
loader.load('../assets/images/360/scene.gltf');

renderer.render(scene);
</script>
	
</body>
</html>
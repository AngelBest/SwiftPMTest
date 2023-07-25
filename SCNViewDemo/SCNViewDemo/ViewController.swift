//
//  ViewController.swift
//  SCNViewDemo
//
//  Created by 宋秀腾 on 2023-07-22.
//

import UIKit
import SceneKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//       sceneKitTest_1()
//        sceneKitTest_2()
//        sceneKitTest_3()
        sceneKitTest_4()

        
    }
    
    func sceneKitTest_1() {
        // 创建view
        let scnView = SCNView(frame: view.bounds)
        view .addSubview(scnView)
        
        // 创建场景
        let scene = SCNScene()
        scnView.scene = scene
        
        // 创建盒子模型
        let box = SCNBox(width: 0.5, height: 0.5, length: 0.5, chamferRadius: 0)
        box.firstMaterial?.diffuse.contents = "scenery.jpg"
        
        // 盒子模型节点
        let node = SCNNode(geometry: box)
        
        // 场景中添加盒子模型节点
        scene.rootNode.addChildNode(node)
        
        // 运行操作运动摄像机
        scnView.allowsCameraControl = true
        
        // 抗锯齿（会比较消耗系统性能）
        scnView.antialiasingMode = .multisampling4X
        
        // 添加一个相机节点
        let cameraNode = SCNNode()
        let camera = SCNCamera()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(0, 0, 3)
        scene.rootNode.addChildNode(cameraNode)
    }
    
    func sceneKitTest_2() {
        let scnView = SCNView(frame: view.bounds)
        scnView.backgroundColor = .lightGray
        view.addSubview(scnView)
        
        // 创建场景
        let scene = SCNScene()
        scnView.scene = scene
        
        /**
         创建节点和子节点
         */
        // 创建一个球体
        let sphere = SCNSphere(radius: 0.5)
        sphere.firstMaterial?.diffuse.contents = "scenery.jpg"
        // 创建节点并把球体绑定到节点上
        let sceneryNode = SCNNode(geometry: sphere)
        scene.rootNode.addChildNode(sceneryNode)
        // 创建字体
        let scnText = SCNText(string: "Scenery", extrusionDepth: 0.3)
        scnText.font = UIFont.systemFont(ofSize: 0.3)
        // 将字体绑定到节点上
        let textNode = SCNNode(geometry: scnText)
        textNode.position = SCNVector3(-1, 0, -2)
        // 添加到scenery节点的子节点上
        sceneryNode.addChildNode(textNode)
        
        
    }
    
    func sceneKitTest_3() {
        let scnView = SCNView(frame: view.bounds)
        scnView.backgroundColor = .lightGray
        view.addSubview(scnView)
        
        // 创建场景
        let scene = SCNScene()
        scnView.scene = scene
        
        
        // 1. 球体
        let sphere = SCNSphere(radius: 0.5)
        sphere.firstMaterial?.diffuse.contents = "scenery.jpg"
        let earthNode = SCNNode(geometry: sphere)
//        scene.rootNode.addChildNode(earthNode)
      
        //2. 字体
        let scnText = SCNText(string: "Lenovo", extrusionDepth: 0.3)
        scnText.font = UIFont.systemFont(ofSize: 0.3)
        let textNode = SCNNode(geometry: scnText)
        textNode.position = SCNVector3(x: -1, y: 0, z: -2)
//        earthNode.addChildNode(textNode)
        
        // 3. 平面
        let plane = SCNPlane(width: 2, height: 2)
        plane.firstMaterial?.diffuse.contents = "scenery.jpg"
        let planeNode = SCNNode(geometry: plane)
//        scene.rootNode.addChildNode(planeNode)
        
        // 4. 金字塔
        let pyramid = SCNPyramid(width: 1, height: 1, length: 1)
        pyramid.firstMaterial?.diffuse.contents = "scenery.jpg"
        let pyramidNode = SCNNode(geometry: pyramid)
        scene.rootNode.addChildNode(pyramidNode)
        
        //5. 圆柱体
        let cylinder = SCNCylinder(radius: 1, height: 1.5)
        cylinder.firstMaterial?.diffuse.contents = "scenery.jpg"
        let cylinderNode = SCNNode(geometry: cylinder)
//        scene.rootNode.addChildNode(cylinderNode)
        
        //6. 管道
        let tube = SCNTube(innerRadius: 0.5, outerRadius: 0.6, height: 1)
        tube.firstMaterial?.diffuse.contents = "scenery.jpg"
        let tubeNode = SCNNode(geometry: tube)
//        scene.rootNode.addChildNode(tubeNode)
        
        //6. 管道
        let torus = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
        torus.firstMaterial?.diffuse.contents = "scenery.jpg"
        let torusNode = SCNNode(geometry: torus)
//        scene.rootNode.addChildNode(torusNode)
        
        // 7. 地面
        let floor = SCNFloor()
        floor.firstMaterial?.diffuse.contents = "scenery.jpg"
        let floorNode = SCNNode(geometry: floor)
//        scene.rootNode.addChildNode(floorNode)
        
        let customShap = SCNShape(path: UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 1, height: 1), cornerRadius: 0.5), extrusionDepth: 3)
        customShap.firstMaterial?.diffuse.contents = "scenery.jpg"
        let customShapNode = SCNNode(geometry: customShap)
//        scene.rootNode.addChildNode(customShapNode)
        
    }
    
    
    /// Action
    func sceneKitTest_4() {
        // 创建View
        let scnView = SCNView(frame: view.bounds)
        scnView.backgroundColor = .lightGray
        view.addSubview(scnView)
        
        // 创建场景
        let scene = SCNScene()
        scnView.scene = scene
        
        // 创建球体
        let sphere = SCNSphere(radius: 0.5)
        sphere.firstMaterial?.diffuse.contents = "scenery.jpg"
        let earthNode = SCNNode(geometry: sphere)
        scene.rootNode.addChildNode(earthNode)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // 移动
//            let moveAction = SCNAction.move(to: SCNVector3(0, 1, 0), duration: 1.0)
//            let moveByAction = SCNAction.move(by: SCNVector3(0, 1, 0), duration: 1.0)
//            let moveByX = SCNAction.moveBy(x: 1, y: 1, z: 1, duration: 2.0)
            // 旋转
//            let roteAction = SCNAction.rotateBy(x: 1, y: 1, z: 0, duration: 2)
            let rotebyangelAction = SCNAction.rotate(by: 10, around: SCNVector3(0, 1, 0), duration: 2)
            
            // 放大
            let scale = SCNAction.scale(to: 1.2, duration: 1)
            let scale1 = SCNAction.scale(to: 1.0, duration: 1)
            
            // 透明度
//            let fadeoutAction = SCNAction.fadeOut(duration: 2)
            let fadetoAction = SCNAction.fadeOpacity(to: 0.2, duration: 1)
            let fadeByAction = SCNAction.fadeOpacity(by: 1, duration: 1)
            
            // 隐藏显示
//            let hiddenMoon = SCNAction.hide()
//            let unhiddenMoon = SCNAction.unhide()
            
            // 把多个行为放到一个数组中一个个执行
            let seque = SCNAction.sequence([fadetoAction, fadeByAction])
            let seque1 = SCNAction.sequence([scale, scale1])
            
            // 把多个行为捆绑到一起执行
            let group = SCNAction.group([seque, rotebyangelAction, seque1])
            let runever = SCNAction.repeatForever(group)
            earthNode.runAction(runever)
            
            
        }
    
        // 运行操作运动摄像机
        scnView.allowsCameraControl = true
        // 抗锯齿（会比较消耗系统性能）
        scnView.antialiasingMode = .multisampling4X
        // 添加一个相机节点
        let cameraNode = SCNNode()
        let camera = SCNCamera()
        camera.automaticallyAdjustsZRange = true
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(0, 0, 5)
        scene.rootNode.addChildNode(cameraNode)
        
        // 设置游戏帧率
        scnView.preferredFramesPerSecond = 60
        // 打开统计菜单
        scnView.showsStatistics = true
        scnView.debugOptions = .showLightInfluences
        
        
    }
    

}


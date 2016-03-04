//
//  Solution.swift
//  BinaryTreeBalanceCheck
//
//  Created by Terry Wang on 3/3/16.
//  Copyright © 2016 Vento. All rights reserved.
//

import Foundation

class Solution: NSObject {

    /**
    * Determines if a binary tree is balanced
    *
    * @param {BinaryTreeNode} root The root node
    * @returns is the tree balanced?
    */
    
     
    func isTreeBalanced(root:BinaryTreeNode!) -> Bool {
        return maxDepth(root) - minDepth(root) <= 1;
    }
    
    // Determins min depth of binary tree node
    private func minDepth(node:BinaryTreeNode?) -> Int {
        
        if (node == nil) {
            return 0
        } else {
            return 1 + min(minDepth(node?.left), minDepth(node?.right))
        }
    }
    
     
    
    // Determines max depth of a binary tree node
    private func maxDepth(node:BinaryTreeNode?) -> Int {
        if (node == nil) {
            return 0
        } else {
            return 1 + max(maxDepth(node!.left), maxDepth(node!.right))
        }
    }
    
    
    
}


class BinaryTreeNode {
    
    var data:AnyObject?
    
    var left:BinaryTreeNode!
    var right:BinaryTreeNode!
    
    init(data:AnyObject, left:BinaryTreeNode, right:BinaryTreeNode) {
        self.data = data
        self.left = left
        self.right = right
    }
}
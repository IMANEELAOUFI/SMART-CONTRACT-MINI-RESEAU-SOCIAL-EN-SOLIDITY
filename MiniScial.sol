// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MiniSocial {
    struct Post {
        string message;
        address author;
    }

    Post[] private posts;

    function publishPost(string memory _message) public {
        posts.push(Post({
            message: _message,
            author: msg.sender
        }));
    }

    function getPost(uint index) public view returns (string memory, address) {
        require(index < posts.length, "Index out of range");
        Post memory post = posts[index];
        return (post.message, post.author);
    }

    function getTotalPosts() public view returns (uint) {
        return posts.length;
    }
}

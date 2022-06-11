// ==UserScript==
// @name     BiliBili Remove Popups
// @version  1
// @grant    none
// @match    https://*.bilibili.com/video/*
// @require http://code.jquery.com/jquery-latest.js
// @require  https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

//  This script removes the embedded "popups" that show up on bilibili videos that (on it's release) you couldn't remove or move so you couldn't see what was behind it on the video
//       Those popups generally asked you to vote on either how you thought about the video (1~5, and showed it in the danmaku chat) or tried to get you to subscribe to their channel
//  
// Version 1.0: Initial Script
// Update: This script seems to be not needed anymore as the old videos that I saw before (~March 2021) used to have said "feature", but does not show anything anymore, moving this into archived

waitForKeyElements (".bilibili-player-video-popup-vote", removeVote);
waitForKeyElements (".bilibili-player-video-popup-item", removeSubscribe);

function removeVote (jNode) {
  document.getElementsByClassName("bilibili-player-video-popup-vote")[0].remove();
}

function removeSubscribe (jNode) {
  document.getElementsByClassName("bilibili-player-video-popup-item")[0].remove();
}

// ==UserScript==
// @name	BiliBili Full Screen
// @version	1
// @grant	none
// @match 	https://*.bilibili.com/video/*
// @require	http://code.jquery.com/jquery-latest.js
// @require	https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script automatically clicks on the web fullscreen button when you open a bilibili page
//      This is not a regular windows fullscreen that you would see in youtube full screen, this button just makes 
// 
// (old version with old classnames for completeness)

waitForKeyElements (".bilibili-player-iconfont-web-fullscreen-off", clickOnFullscreen);

function clickOnFullscreen (jNode) {
	document.getElementsByClassName("bilibili-player-video-web-fullscreen")[0].click();
}
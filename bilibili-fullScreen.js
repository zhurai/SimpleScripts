// ==UserScript==
// @name	BiliBili Full Screen
// @version	1.1
// @grant	none
// @match 	https://*.bilibili.com/video/*
// @require	http://code.jquery.com/jquery-latest.js
// @require	https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script automatically clicks on the web fullscreen button when you open a bilibili page
//      This is not a regular windows fullscreen that you would see in youtube full screen, this button just makes 
// 
// Version 1.0: Initial Script
// Version 1.1: Fixed the Classnames used as the bilibili player changed classnames for everything

waitForKeyElements (".bpx-player-ctrl-web-enter", clickOnFullscreen);

function clickOnFullscreen (jNode) {
	document.getElementsByClassName("bpx-player-ctrl-web")[0].click();
}
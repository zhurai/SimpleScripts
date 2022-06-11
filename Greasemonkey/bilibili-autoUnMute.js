// ==UserScript==
// @name	BiliBili Auto Unmute
// @version	1
// @grant	none
// @match 	https://*.bilibili.com/video/*
// @require	http://code.jquery.com/jquery-latest.js
// @require	https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script automatically toggles the mute button when you open a bilibili page
//      This is because at least on my setups at least, bilibili automatically mutes itself when you open it for some reason... 
// 
// Version 1.0: Initial Script

waitForKeyElements (".bpx-player-ctrl-muted-icon", clickOnFullscreen);

function clickOnFullscreen (jNode) {
	document.getElementsByClassName("bpx-player-ctrl-volume")[0].children[0].click();
}


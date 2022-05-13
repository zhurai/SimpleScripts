// ==UserScript==
// @name     HoloTools Auto Hide Header
// @version  1
// @grant    none
// @match    https://hololive.jetri.co/*
// @require  http://code.jquery.com/jquery-latest.js
// @require  https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script detects when you (the user) clicks on a livestream video, and automatically hides the top bar to have more screenspace devoted to the stream(s) you are watching
// 
// Version 1.0: Initial Script

waitForKeyElements (".player", HideTopBar)

function HideTopBar (jNode) {
  var topbarlist = document.getElementsByClassName("live-control-button");
	for (var i = 0; i < topbarlist.length; i++) {
    if (topbarlist.item(i).innerText === "expand_less")
    {
      topbarlist.item(i).click()
    }
  }
  
}
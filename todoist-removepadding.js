// ==UserScript==
// @name        todoist_reducepaddingleftright
// @match       *://todoist.com/*
// @grant       GM_addStyle
// @run-at      document-start
// @require  http://code.jquery.com/jquery-latest.js
// @require  https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script just uses greasemonkey to modify the styling to ignore the stylesheet and not have any padding on left and right
//    This is mostly used in my livestreams to track my stream to do list/priorities for the day. 
//    I use an adblock to selectively remove everything else like the header for that browser instance, but the adblock is unable to do this and the list otherwise would be the middle of the page with too much wasted space
// 
// Version 1.0: Initial Script

waitForKeyElements (".main_content", RemoveContentMargins) 
waitForKeyElements ("#list_editor", RemoveContentMargins) 

function RemoveContentMargins (jNode) {
  document.getElementsByClassName("list_editor")[0].setAttribute('style','padding: 0 0 0 0 !important; max-width:100000px')
}
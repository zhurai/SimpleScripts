// ==UserScript==
// @name     TickTick Edit Today
// @version  1
// @grant    none
// @match    https://*.ticktick.com/*
// @require  http://code.jquery.com/jquery-latest.js
// @require  https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script just uses greasemonkey to extra elements on the "today" scene of TickTick
//    I use my To Do List applications on a tiny window as just the list so I don't really appreciate the other bells and whistles in that instance (like entering tasks, headers, sidebar, etc) as I handle those on another window
// 
// Version 1.0: Initial Script

if ( ! /#q\/all\/today\/.*/.test(location.hash) )  return;
// https://ticktick.com/webapp/#q/all/today/611604d51e3ce42b0fe0007a

waitForKeyElements (".tl-quick", RemoveAddTask)
waitForKeyElements (".tag-list", RemoveMiscInfo)
waitForKeyElements ("#left-view", RemoveLeftView)         

function RemoveAddTask (jNode) {
  if (/Today/i.test (document.getElementsByClassName("tl-quick")[0].textContent) )
  {
    document.getElementsByClassName("tl-quick")[0].remove();
  }
}

function RemoveMiscInfo (jNode) {
  var lengthoflist=document.getElementsByClassName("tag-list").length
  for (var i=0;i<lengthoflist;i++){
    document.getElementsByClassName("tag-list")[i].remove();
    document.getElementsByClassName("project-hint")[i].remove();
    document.getElementsByClassName("repeat-hint")[i].remove();
    document.getElementsByClassName("note-hint")[i].remove();
  }
}

function RemoveLeftView (jNode) {
  document.getElementById("left-view").remove();
}
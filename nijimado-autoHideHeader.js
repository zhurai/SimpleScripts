// ==UserScript==
// @name     NijiMado Script
// @version  1
// @grant    none
// @match    https://niji-mado.web.app/*
// @require  http://code.jquery.com/jquery-latest.js
// @require  https://gist.github.com/raw/2625891/waitForKeyElements.js
// ==/UserScript==

// This script automatically hides the right side of the header, and automatically hides the header 
//      the autohide only occurs when the user clicks on a stream to watch
// 
// Version 1.0: Initial Script

waitForKeyElements (".mat-button-wrapper", MaximizeWindow)
waitForKeyElements (".player", HideTopBar)

function MaximizeWindow (jNode) {
  var topbarlist = document.getElementsByClassName("mat-button-wrapper");
	for (var i = 0; i < topbarlist.length; i++) {
    if (topbarlist.item(i).innerText === "view_agenda")
    {
      topbarlist.item(i).click()
    }
  }
  
  var topbarlist2= document.getElementsByClassName("toolbar");
  for (var i = 0; i < topbarlist2.length; i++) 
  {
    var topbarlist3=topbarlist2.item(i).getElementsByClassName("mat-button-wrapper");
    
    for (var ii=0;ii<topbarlist3.length;ii++){
        if (topbarlist3.item(ii).innerText === "arrow_right")
        {
         topbarlist3.item(ii).click()
       }
    }
  }
}

function HideTopBar (jNode) {
  var topbarlist = document.getElementsByClassName("ng-star-inserted");
	for (var i = 0; i < topbarlist.length; i++) {
    if (topbarlist.item(i).innerText === "expand_more")
    {
      topbarlist.item(i).click()
    }
  }
  
}
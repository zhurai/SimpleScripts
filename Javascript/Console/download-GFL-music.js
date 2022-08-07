// This was a personal script to download music from a website (https://girlsfrontline.kr/db/musicplayer/)
// The website used a music player but listed all the music files, but was behind cloudflare, so regular get Requests to pull the page did not work
// 
// As such, this was quickly whipped up to be used in the console
//
// There is a delay (sleep) implemented to prevent overloading their server
//
// I plan to eventually convert this into a Selenium script, and to handle sub directories + check for new updates before downloading

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

function downloadFileWithLink(thelink) {
    var link = document.createElement("a");
    var name = thelink.split("/")
    name= name[name.length-1]
    link.setAttribute('download', name);
    link.href = href;
    document.body.appendChild(link);
    link.click();
    link.remove();
}


async function downloadList(array){
    for (x of array){
    url=x.children[0].getAttribute('data-src')
    console.log(url)
    downloadFileWithLink(url)
    await sleep(60000)
    }
}

thelist = document.getElementById("playlist")
downloadList(thelist)

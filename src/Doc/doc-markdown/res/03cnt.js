let script = document.createElement('script');
script.src = "https://cdn.jsdelivr.net/npm/marked/marked.min.js";
document.getElementsByTagName("body")[0].append(script);

script.onload = function() {
    let m; 
    
    let url = window.location.href;
    let last = url.split('/').pop();
    last = last.replace(".html",".md");
    
    fetch(last)
    .then(response => response.text()) 
    .then(d => {
        m = d;  
        m = marked.parse(m);
        document.getElementById('cnt').innerHTML = m;
    });
}






fetch("http://url",{
    method: "POST",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify(object)
}).then(r=>r.json()).then((data)=>{
    
})
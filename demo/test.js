var worker = new Worker("/client/worker_party.js");

worker.addEventListener('message', function(wEvent) {
   console.log("Worker callback!\n");
}, false);

worker.postMessage("/getTask");

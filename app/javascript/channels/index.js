// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

var images = [

    {
       
        image : 'https://images.pexels.com/photos/217869/pexels-photo-217869.jpeg?cs=srgb&dl=pexels-daniel-217869.jpg&fm=jpg',
       
    },
    {
        
        image : 'https://images.pexels.com/photos/38277/motorcycle-stunt-jump-motocross-38277.jpeg?cs=srgb&dl=pexels-pixabay-38277.jpg&fm=jpg',
       
    },
    {
        
        image : 'https://images.pexels.com/photos/1024894/pexels-photo-1024894.jpeg?cs=srgb&dl=pexels-rodolfo-clix-1024894.jpg&fm=jpg',
        
    },
    {
        
        image : 'https://images.pexels.com/photos/217872/pexels-photo-217872.jpeg?cs=srgb&dl=pexels-daniel-217872.jpg&fm=jpg',
        
    },
    {
        
        image : 'https://images.pexels.com/photos/1161994/pexels-photo-1161994.jpeg?cs=srgb&dl=pexels-rodolfo-clix-1161994.jpg&fm=jpg',
        
    }
];

var index = 0;
var slaytCount = images.length;
var interval;

var settings={
    duration : '1500'
};

init(settings);

function init(settings){

    interval=setInterval(function(){
        

        
            if(slaytCount == index+1){
                index = -1;
            }
            showSlide(index);
            console.log(index);
            index++;
        
        

    },settings.duration)
  

}



function showSlide(i){

    index = i;

    if (i<0) {
        index = slaytCount - 1;
    }
    if(i >= slaytCount){
        index =0;
    }


    document.querySelector('.denek').setAttribute('src',images[index].image);
    

}

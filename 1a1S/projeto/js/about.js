function checker(){
    var result = confirm("Are you sure you want to go to GitHub?");
    if(result==false){
        event.preventDefault();
    }
}
// Initialize Firebase
var config = {
    apiKey: "AIzaSyCMRbeCoq-RR6JreCBH7Jtf5AI8Uin_7G0",
    authDomain: "momd-db768.firebaseapp.com",
    databaseURL: "https://momd-db768-default-rtdb.firebaseio.com/",
    projectId: "momd-db768",
    storageBucket: "momd-db768.appspot.com",
    messagingSenderId: "881040962656",
    appId: "1:881040962656:web:b449e6e6400e5f43e97f05",
    measurementId: "G-N8ED7EMNR2"
};
firebase.initializeApp(config);

//Reference messages collection
let messagesRef = firebase.database().ref('messages');

//listen to form
document.getElementById('contactForm').addEventListener('submit', submitForm);

function submitForm(e){
    e.preventDefault();

    // get Values
    let name = getInputVal('name');
    let email = getInputVal('email');
    let phone = getInputVal('phone');
    let message = getInputVal('message');

    //save message

    saveMessage(name, email, phone, message);

    //show alert
    document.querySelector('.alert').style.display='block';

    //Hide alert after 3 s
    setTimeout(function(){
        document.querySelector('.alert').style.display='none';
    }, 3000)
    //clear form
    document.getElementById('contactForm').reset();
}
//function to get form values

function getInputVal(id){
    return document.getElementById(id).value;
}

//save message to firebase
function saveMessage(name, email, phone, message){
    let newMessageRef = messagesRef.push();
    newMessageRef.set({
        name: name,
        email: email,
        phone: phone,
        message: message
    })
}
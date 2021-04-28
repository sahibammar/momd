const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp(functions.config().firebase);


const twilio = require('twilio');
const accountSid = functions.config().twilio.sid
const authToken  = functions.config().twilio.token

const client = new twilio(accountSid, authToken);

const twilioNumber = '+12675926532' // your twilio phone number


exports.textname = functions.database
       .ref('/messages')
       .onCreate(event => {

    console.log(event)


    return admin.database()
                .ref(`/messages`)
                .once('value')
                .then(snapshot => snapshot.val())
                .then(message => {
                    const name = message.name
                    const phone = '+4917658392519'//message.phone

                    if ( !validE164(phone) ) {
                        throw new Error('number +4917658392519 must be E164 format!')
                    }

                    const textMessage = {
                        body: `شكرا للتسجيل في موفعنا. تم استلام بياناتك بنجاح`,
                        to: phone,  // Text to this number
                        from: twilioNumber // From a valid Twilio number
                    }

                    return client.messages.create(textMessage)
                })
                .then(message => console.log(message.sid, 'success'))
                .catch(err => console.log(err))


});


/// Validate E164 format
function validE164(num) {
    return /^\+?[1-9]\d{1,14}$/.test(num)
}
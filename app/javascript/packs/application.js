require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("firebase")
require("firebaseui-ru")
require('admin-lte')
import firebase from 'firebase/app'
import "@fortawesome/fontawesome-free/js/all";

var config = {
    apiKey: "AIzaSyDYXxB5wBHfeKGK_qfc__dSHoyqPNVNX00",
    authDomain: "podvoh-eb8c4.firebaseapp.com",
    projectId: "podvoh-eb8c4",
    storageBucket: "podvoh-eb8c4.appspot.com",
    messagingSenderId: "802256930651",
    appId: "1:802256930651:web:81c0477f26d6bd855a3c7e"
};
firebase.initializeApp(config);
firebase.analytics();

var ui = new firebaseui.auth.AuthUI(firebase.auth());
ui.start('#firebaseui-auth-container', {
    signInOptions: [
        {provider: firebase.auth.PhoneAuthProvider.PROVIDER_ID, defaultCountry: 'ru'},
        firebase.auth.GoogleAuthProvider.PROVIDER_ID
    ],
    callbacks: {
        signInSuccessWithAuthResult: (currentUser) => {
            $.post('/users/auth/firebase/callback', {
                    authenticity_token: $('meta[name="csrf-token"]').attr("content"),
                    user: {
                        provider: currentUser.additionalUserInfo.providerId,
                        uid: currentUser.user.uid,
                        email: currentUser.user.email,
                        name: currentUser.user.displayName,
                        phone: currentUser.user.phoneNumber
                    }
                },
                () => window.location.reload()
            );
            return false;
        }
    },
    credentialHelper: firebaseui.auth.CredentialHelper.GOOGLE_YOLO
});

$( () => $('[data-toggle="tooltip"]').tooltip() )

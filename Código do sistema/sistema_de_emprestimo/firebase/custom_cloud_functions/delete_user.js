const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.deleteUser = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    if (!context.auth || !context.auth.uid) {
      throw new functions.https.HttpsError(
        "unauthenticated",
        "The function must be called while authenticated.",
      );
    }

    // Check if the authenticated user is the specified admin
    // const adminUID = 'e9SzjxQ7ttORsitXgeXcu5E9oem2';
    //if (context.auth.uid !== adminUID) {
    //throw new functions.https.HttpsError('permission-denied', 'The function must be called by an authorized admin.');

    const userRef = data.userRef;
    // Write your code below!

    if (!userRef) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "The function must be called with a user document ID.",
      );
    }

    try {
      // Delete the user from Firebase Authentication
      await admin.auth().deleteUser(userRef);

      // Delete the user's document from Firestore user collection
      const usersRef = admin.firestore().collection("usuario");
      await usersRef.doc(userRef).delete();

      return {
        status: "success",
        message: `User with ID ${userRef} has been successfully deleted.`,
      };
    } catch (error) {
      console.error("Error in deleteUser:", error);
      throw new functions.https.HttpsError(
        "internal",
        "An error occurred while processing the request.",
      );
    }
  });

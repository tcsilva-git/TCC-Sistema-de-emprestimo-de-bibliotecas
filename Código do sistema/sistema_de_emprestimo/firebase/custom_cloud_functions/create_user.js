const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.createUser = functions.https.onCall(async (data, context) => {
  // Authentication / user information is automatically added to the request.
  if (!context.auth || !context.auth.uid) {
    throw new functions.https.HttpsError(
      "unauthenticated",
      "You must be logged in to create a user.",
    );
  }

  const email = data.email;
  const password = data.senha;
  const endereco = data.endereco;
  const telefone = data.telefone;
  const responsavel = data.responsavel;
  const emailResp = data.emailResp;
  const telResp = data.telResp;
  const instituicao = data.instituicao;
  const biblioteca = data.biblioteca;
  const responsavel2 = data.responsavel2;
  const telResp2 = data.telResp2;
  const emailResp2 = data.emailResp2;
  const cargoResp = data.cargoResp;
  const cargoResp2 = data.cargoResp2;
  const cep = data.cep;

  try {
    // Create a new user
    const userRecord = await admin.auth().createUser({ email, password });

    // Add metadata to Firestore
    const docRef = await admin
      .firestore()
      .collection("usuario")
      .doc(userRecord.uid);

    await docRef.set({
      admin: false,
      uid: userRecord.uid,
      display_name: biblioteca,
      email: email,
      created_time: admin.firestore.FieldValue.serverTimestamp(),
      endereco: endereco,
      phone_number: telefone,
      responsavel: responsavel,
      email_responsavel: emailResp,
      tel_responsavel: telResp,
      instituicao: instituicao,
      responsavel2: responsavel2,
      tel_responsavel2: telResp2,
      email_responsavel2: emailResp2,
      cargo_responsavel: cargoResp,
      cargo_responsavel2: cargoResp2,
      cep: cep,
    });

    return {
      status: "SUCCESS",
      userId: userRecord.uid,
      docRef: docRef.path,
    };
  } catch (error) {
    console.error("Error creating user:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Internal error occurred while creating user.",
    );
  }
});

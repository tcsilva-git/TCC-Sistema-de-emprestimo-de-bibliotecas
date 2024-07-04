const admin = require("firebase-admin/app");
admin.initializeApp();

const createUser = require("./create_user.js");
exports.createUser = createUser.createUser;
const deleteUser = require("./delete_user.js");
exports.deleteUser = deleteUser.deleteUser;

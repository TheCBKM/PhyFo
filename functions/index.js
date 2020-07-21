const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.sendMsg = functions.https.onRequest((request, response) => {
  console.log(request.body);
  functions.logger.info("Hello logs!", { structuredData: true });
  admin.messaging().sendToTopic("all", {
    notification: {
      title: request.body.title || "PhyFo is always there",
      body: request.body.body || "Feel free to click me",
      clickAction: "FLUTTER_NOTIFICATION_CLICK",
    },
  });
  return response.json({ success: true, res: request.body });
});

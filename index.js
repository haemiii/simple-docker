import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("🐳 Dream Coding in Docker! 🐳");
});

app.listen(3000, () => console.log("Server is running"));

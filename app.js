/** ShopIndiana express app. */

const express = require("express");
const companiesRoutes = require("./routes/companies");

const cors = require('cors');
const app = express();

app.use(express.json());
app.use(cors());
app.use("/", companiesRoutes);
app.use(express.static(path.join(__dirname, 'build')));
app.get('/*', (req, res) => {
  res.sendFile(path.join(__dirname, 'build', 'index.html'));
});
// app.use("/company", companiesRoutes);
// app.use("/companies", companiesRoutes);

/** 404 Not Found handler. */

app.use(function (req, res, next) {
  const err = new Error("Not Found");
  err.status = 404;
  next(err);
});

/** Generic error handler. */

app.use(function (err, req, res, next) {
  if (err.stack) console.error(err.stack);

  res.status(err.status || 500).json({
    message: err.message,
  });
});


module.exports = app;
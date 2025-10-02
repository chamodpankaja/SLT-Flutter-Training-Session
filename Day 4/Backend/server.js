const express = require("express");
const cors = require("cors");
const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json()); 


let data = [
  { id: 1, name: "Chamod", role: "Developer" },
  { id: 2, name: "Nimal", role: "Designer" },
  { id: 3, name: "Sajith", role: "Tester" }
];


app.get("/users", (req, res) => {
  res.json(data);
});



app.post("/users", (req, res) => {
  const newUser = req.body;


  newUser.id = data.length > 0 ? data[data.length - 1].id + 1 : 1;

  data.push(newUser);

  res.status(201).json({
    message: "User added successfully",
    user: newUser
  });
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});

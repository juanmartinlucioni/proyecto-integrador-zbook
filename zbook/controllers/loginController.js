let loginController = {
  index: function (req, res) {
    return res.render("login", { title: "Login" });
  },
};

module.exports = loginController;

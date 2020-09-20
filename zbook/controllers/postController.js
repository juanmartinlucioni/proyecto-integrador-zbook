let postController = {
    index: function (req, res) {
        return res.render("post", { title: "Create a Post" });
    },
};

module.exports = postController;
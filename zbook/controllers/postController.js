let postController = {
    index: function (req, res) {
        return res.render("post", { title: "Create a Post" });
    },
};

add: (req, res) => {
    let formData = req.body
    newPost = {
        caption: formData.caption,
        imageId: formData.url,
    }
    db.create(newPost)
    res.redirect('/home')
}

module.exports = postController;
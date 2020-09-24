const controller = {
    index: (req, res) => {
        res.render('feed', { title: 'Z-Book' });
    },
}

module.exports = controller
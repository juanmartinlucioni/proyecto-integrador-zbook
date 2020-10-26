const controller = {
    index: (req, res) => {
        return res.render('index', { title: 'Z-Book' });
    },
}

module.exports = controller
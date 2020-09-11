const controller = {
    index: (req, res) => {
        res.render('index', { title: 'Z-Book' });
    },
}

module.exports = controller
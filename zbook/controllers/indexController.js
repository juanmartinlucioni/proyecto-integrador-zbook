const controller = {
    index: (req, res) => {
        if (req.session.user != undefined) {
          return res.redirect('/feed');
        } else {
          return res.render('index', { title: 'Z-Book' });
        }
        
    },
}

module.exports = controller
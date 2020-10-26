const controller = require("./profileController");
let controller = {
    logout: function(req,res){
        req.session.destroy();
        return resredirect('/');
    }
}
module.exports = controller
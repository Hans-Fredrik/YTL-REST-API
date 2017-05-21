import Vapor

let drop = Droplet()
let videoController = VideoController()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

drop.get("/api/videos", handler: videoController.getAll)
drop.get("/api/videos/trending", handler: videoController.getTrending)
drop.get("/api/videos/subscriptions", handler: videoController.getSubscribed)

drop.run()

# Phase 2: Album, Subalbum, and Photo View

## Rails
### Models
* Album
* Subalbum
* Photo

### Controllers
* Api::AlbumsController (index, show, create, update, destroy)
* Api::SubalbumsController (create, update, destroy)
* API::PhotosController (create, update, destroy)
* StaticPagesController (root)

### Views
* api/albums.json.jbuilder
* static_pages/root.html.erb

## Backbone
### Models
* Blog (parses nested subalbum association)
* Subalbum (parses nested photo association)
* Photo


### Collections
* Blogs
* Subalbums
* Photos

### Views
* NavigationBar* 

* AlbumsIndex (composite view containing AlbumIndexItem)
* AlbumsIndexItem* 

* AlbumShow (composite view containing PhotoIndexItem subview)
* PhotoItem

## Gems/Libraries
* Backbone on Rails

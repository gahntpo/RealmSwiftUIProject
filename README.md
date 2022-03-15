# RealmSwiftUIProject
Demo that shows how to use Realm with SwiftUI locally. Including the new property wrappers like @ObservedResults and @ObservedRealmObject 

**This is a demo project for Youtube tutorial**

 
----
 
The app shows a list of Items which have a name property and isFavorite.
Tapping on a list item will push to the detail view for this item. 
You can edit the name of the item.
In the top right corner is a isFavorite button.
Pressing on the delete button will delete the item and push back to the list view.



 
<img src="https://github.com/gahntpo/RealmSwiftUIProject/blob/main/images/main.png"  width=40% height=40%> <img src="https://github.com/gahntpo/RealmSwiftUIProject/blob/main/images/detail.png"  width=40% height=40%> 



## The list of items can be edited. 
The order of the items can be changed and individuel items can be deleted with swip on delete.


<img src="https://github.com/gahntpo/RealmSwiftUIProject/blob/main/images/edit_mode.png"  width=40% height=40%>   <img src="https://github.com/gahntpo/RealmSwiftUIProject/blob/main/images/delete.png"  width=40% height=40%>

----

### Observing changes to one realm managed object

 @ObservedRealmObject var group: Group
 
 @ObservedRealmObject var item: Item
 
 ### Fetching all instances of type Item in the realm database

  @ObservedResults(Item.self) var items
  
  @ObservedResults(Item.self, sortDescriptor: SortDescriptor.init(keyPath: "name", ascending: false)) var sortedItems

<img src="https://github.com/gahntpo/RealmSwiftUIProject/blob/main/images/list_sorting.gif"  width=40% height=40%>

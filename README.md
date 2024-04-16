# OWT Interview Test

This is an unfinished delivery app.
The current state only includes a repository layer for data retrieval.
Data Repository is registered by Get It dependency. Of course, you can access it by using Get It dependency.
- Date Repository
```/lib/repositories/delivery_repository.dart```
- DI
```/lib/core/di/locator.dart```

Please make 3 screen: Category List, List Item for Each Category, Detail Item.

- List Category Screen: This screen displays a list of categories available in the app. Each category is represented by its name, a thumb image and number of items. Users can select a category to view the items within that category. User can search all items by search word
https://www.figma.com/file/mIcdHCDmGoDDDuJFR654Xb/Delivery-App_UI-Kit-(Community)?type=design&node-id=33%3A699&mode=dev&t=rgr8i9Q4W1gfMKCr-1
https://www.figma.com/file/mIcdHCDmGoDDDuJFR654Xb/Delivery-App_UI-Kit-(Community)?type=design&node-id=1161%3A582&mode=dev&t=rgr8i9Q4W1gfMKCr-1

- List Item Screen for Each Category: After selecting a category from the list, users are taken to this screen. Here, they see a list of items belonging to the selected category. Each item is typically displayed with its name, image, and possibly other relevant information such as price. Users can select an item to view its details. User can search all item in the category by search word at here.
https://www.figma.com/file/mIcdHCDmGoDDDuJFR654Xb/Delivery-App_UI-Kit-(Community)?type=design&node-id=33%3A697&mode=dev&t=rgr8i9Q4W1gfMKCr-1

- Detail Item Screen: This screen provides detailed information about a selected item. It includes the item's name, image, description, price, and any other relevant details.
https://www.figma.com/file/mIcdHCDmGoDDDuJFR654Xb/Delivery-App_UI-Kit-(Community)?type=design&node-id=33%3A698&mode=dev&t=rgr8i9Q4W1gfMKCr-1

## Requirements
- Checkout and create your branch with format: 
```<your-name>/interview-test```
- Make the screens follow Figma file.
- Data will be got by data repository. Please implement it into screens.
- When getting data, please display loading view simply.
- Recommend State manager is Bloc.
- Try to organize a logical structure.
- Data just is mock, so image path in data is asset path. Don't misunderstand and Use asset image widget.


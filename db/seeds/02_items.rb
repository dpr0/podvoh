# frozen_string_literal: true

item1 = Item.create(manufacturer_id: Manufacturer.cached[:kayuk].id, subcategory_id: 2, name: 'Борисыч', code: 'borisych', prop1: 'Длина ружья, мм', prop2: 'До рукоятки, мм', prop3: nil)
Modification.create(code: '20001', prop1: '450', prop2:  '59', item_id: item1.id, price: 19200, images: '0, 0, 0, 0, 0, 1, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0')
Modification.create(code: '20003', prop1: '450', prop2: '207', item_id: item1.id, price: 19200, images: '0, 0, 0, 0, 0, 1, 6, 7, 8, 4, 5, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0')
Modification.create(code: '20005', prop1: '600', prop2:  '59', item_id: item1.id, price: 19200, images: '0, 0, 1, 2, 4, 5, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0')
Modification.create(code: '20007', prop1: '600', prop2: '170', item_id: item1.id, price: 19200, images: '0, 0, 1, 2, 4, 5, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0')
Modification.create(code: '20009', prop1: '600', prop2: '246', item_id: item1.id, price: 19200, images: '0, 0, 1, 2, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0')
Modification.create(code: '20011', prop1: '750', prop2:  '59', item_id: item1.id, price: 20800, images: '0, 1, 2, 3, 4, 5, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0')
Modification.create(code: '20013', prop1: '750', prop2: '170', item_id: item1.id, price: 20800, images: '0, 1, 2, 3, 4, 5, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0')
Modification.create(code: '20015', prop1: '750', prop2: '246', item_id: item1.id, price: 20800, images: '0, 1, 2, 3, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0')
Modification.create(code: '20017', prop1: '900', prop2:  '59', item_id: item1.id, price: 22400, images: '1, 2, 3, 4, 5, 3, 3, 3, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0')
Modification.create(code: '20019', prop1: '900', prop2: '170', item_id: item1.id, price: 22400, images: '1, 2, 3, 4, 5, 3, 3, 6, 7, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0')
Modification.create(code: '20021', prop1: '900', prop2: '246', item_id: item1.id, price: 22400, images: '1, 2, 3, 3, 4, 5, 6, 7, 8, 3, 3, 9, 0, 0, 0, 0, 0, 0, 19, 20, 21, 0, 0, 0')

# frozen_string_literal: true

section = Section.create(code: 'podvoh', name: 'Подводная охота')
cat1 = Category.create(code: 'weapon',   name: 'Оружие',              section_id: section.id)
cat2 = Category.create(code: 'clothes',  name: 'Неопрен',             section_id: section.id)
cat3 = Category.create(code: 'masks',    name: 'Маски, трубки',       section_id: section.id)
cat4 = Category.create(code: 'fins',     name: 'Ласты',               section_id: section.id)
cat5 = Category.create(code: 'special',  name: 'Допы',                section_id: section.id)
cat6 = Category.create(code: 'gadgets',  name: 'Гаджеты',             section_id: section.id)
cat7 = Category.create(code: 'other',    name: 'Аксесуары, запчасти', section_id: section.id)

[
{category_id: cat1.id, code: 'speargun',     name: 'Арбалеты'},
{category_id: cat1.id, code: 'pnevmat',      name: 'Пневматические ружья'},
{category_id: cat1.id, code: 'shafts',       name: 'Гарпуны, пули'},
{category_id: cat1.id, code: 'reels',        name: 'Катушки'},

{category_id: cat2.id, code: 'wetsuits',     name: 'Гидрокостюмы'},
{category_id: cat2.id, code: 'socks',        name: 'Носки'},
{category_id: cat2.id, code: 'gloves',       name: 'Перчатки'},

{category_id: cat3.id, code: 'mask',         name: 'Маски'},
{category_id: cat3.id, code: 'tube',         name: 'Трубки'},

{category_id: cat4.id, code: 'footpocket',   name: 'Калоши'},
{category_id: cat4.id, code: 'fins',         name: 'Ласты'},
{category_id: cat4.id, code: 'fin_blades',   name: 'Лопасти'},

{category_id: cat5.id, code: 'belts',        name: 'Ремни, разгрузки'},
{category_id: cat5.id, code: 'belt_weights', name: 'Свинец'},
{category_id: cat5.id, code: 'knives',       name: 'Ножи'},
{category_id: cat5.id, code: 'hooks',        name: 'Куканы'},
{category_id: cat5.id, code: 'buoys',        name: 'Буи, плотики'},

{category_id: cat6.id, code: 'watch',        name: 'Часы'},
{category_id: cat6.id, code: 'video',        name: 'Видеокамеры'},
{category_id: cat6.id, code: 'flashlights',  name: 'Фонари'},

{category_id: cat7.id, code: 'lines',        name: 'Линь'},
{category_id: cat7.id, code: 'accessories',  name: 'Аксесуары'},
{category_id: cat7.id, code: 'parts',        name: 'Запчасти'},
{category_id: cat7.id, code: 'bags',         name: 'Сумки'},
].each { |hash| Subcategory.create(hash) }

[
{code: 'aqua_sphere',  name: 'Aqua Sphere',  country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'aquadiscovery',name: 'Aquadiscovery',country: 'ru', www: 'aquadiscoveryint.com',     phone: '+78632643232',    email: 'aquasub@aquasub.ru',    address: 'Ростов-на-Дону, ул.Красноармейская, 101'},
{code: 'aqualung',     name: 'Aqualung',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'bare',         name: 'Bare',         country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'beuchat',      name: 'Beuchat',      country: 'fr', www: '',     phone: '',    email: '',    address: ''},
{code: 'c4',           name: 'C4',           country: 'it', www: 'c4carbon.com',     phone: '',    email: '',    address: ''},
{code: 'cressi',       name: 'Cressi',       country: 'it', www: '',     phone: '',    email: '',    address: ''},
{code: 'ferei',        name: 'Ferei',        country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'garmin',       name: 'Garmin',       country: 'us', www: 'garmin.ru',     phone: '+74959613827',    email: '',    address: 'Москва, 3-й Угрешский пр-д, д.8, стр. 3, 13'},
{code: 'gopro',        name: 'GoPro',        country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'hollis',       name: 'Hollis',       country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'imersion',     name: 'Imersion',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'kayuk',        name: 'Каюк',         country: 'by', www: 'kayuk.by',     phone: '+375296443303',    email: 'info@kayuk.by',    address: 'Минск, ул.Л.Беды, д. 31, кв. 119'},
{code: 'leaderfins',   name: 'Leaderfins',   country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'mares',        name: 'mares',        country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'marlin',       name: 'Marlin',       country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'molchanovs',   name: 'Molchanovs',   country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'oceanic',      name: 'Oceanic',      country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'omer',         name: 'O.M.E.R.',     country: 'it', www: 'omersub.com',     phone: '+39039207881',    email: 'OMR-info@aqualung.com',    address: '14ème Rue | 06513 Carros, France'},
{code: 'pelengas',     name: 'Pelengas',     country: 'ua', www: '',     phone: '',    email: '',    address: ''},
{code: 'rob_allen',    name: 'Rob Allen',    country: 'za', www: '',     phone: '',    email: '',    address: ''},
{code: 'salvimar',     name: 'Salvimar',     country: 'it', www: '',     phone: '',    email: '',    address: ''},
{code: 'sargan',       name: 'Sargan',       country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'scorpena',     name: 'Scorpena',     country: 'ru', www: '',     phone: '',    email: '',    address: ''},
{code: 'scubapro',     name: 'Scubapro',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'seac_sub',     name: 'Seac Sub',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'sporasub',     name: 'Sporasub',     country: 'it', www: '',     phone: '',    email: '',    address: ''},
{code: 'speardiver',   name: 'SpearDiver',   country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'suunto',       name: 'Suunto',       country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'triton',       name: 'Triton',       country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'tusa',         name: 'Tusa',         country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'zelinka',      name: 'Zelinka',      country: '', www: '',     phone: '',    email: '',    address: ''},

{code: 'abysstar',     name: 'Abysstar',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'aeris',        name: 'Aeris',        country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'akvilon',      name: 'Akvilon',      country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'mvd',          name: 'MVD',          country: 'gr', www: '',     phone: '',    email: '',    address: ''},
{code: 'picasso',      name: 'Picasso',      country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'rpp',          name: 'РПП',          country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'spetton',      name: 'Spetton',      country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'subgear',      name: 'Subgear',      country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'taymen',       name: 'Таймень',      country: 'ru', www: 'taimen.pro',     phone: '+79322394990',    email: 'taimen@apox.ru',    address: 'Челябинск ул.Енисейска 17 (ГСК 321}'},
{code: 'technisub',    name: 'Technisub',    country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'tigullio',     name: 'Tigullio',     country: '', www: '',     phone: '',    email: '',    address: ''},
{code: 'vector',       name: 'Vector',       country: '', www: '',     phone: '',    email: '',    address: ''},
# {code: '',      name: '',    country: '', www: '',     phone: '',    email: '',    address: ''},
].each { |hash| Manufacturer.create(hash) }

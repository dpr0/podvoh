# frozen_string_literal: true

section = Section.create(code: 'podvoh', name: 'Подводная охота')
cat1 = Category.create(code: 'weapon',   name: 'Оружие',              section_id: section.id, klass: 'far fa-dot-circle')
cat2 = Category.create(code: 'clothes',  name: 'Неопрен',             section_id: section.id, klass: 'fas fa-tshirt')
cat3 = Category.create(code: 'fins',     name: 'Ласты, маски, трубки',section_id: section.id, klass: 'fas fa-swimmer')
cat5 = Category.create(code: 'special',  name: 'Снаряжение',          section_id: section.id, klass: '')
cat6 = Category.create(code: 'gadgets',  name: 'Гаджеты',             section_id: section.id, klass: '')
cat7 = Category.create(code: 'other',    name: 'Другое',              section_id: section.id, klass: '')

[
{category_id: cat1.id, code: 'pnevmat',      name: 'Пневматические ружья', klass: ''},
{category_id: cat1.id, code: 'speargun',     name: 'Арбалеты',             klass: ''},
{category_id: cat1.id, code: 'shafts',       name: 'Гарпуны',              klass: 'fas fa-long-arrow-alt-right'},
{category_id: cat1.id, code: 'reels',        name: 'Катушки',              klass: ''},

{category_id: cat2.id, code: 'wetsuits',     name: 'Гидрокостюмы',         klass: 'fas fa-tshirt'},
{category_id: cat2.id, code: 'socks',        name: 'Носки',                klass: 'fas fa-socks'},
{category_id: cat2.id, code: 'gloves',       name: 'Перчатки',             klass: 'fas fa-mitten'},

{category_id: cat3.id, code: 'mask',         name: 'Маски',                klass: 'fas fa-mask'},
{category_id: cat3.id, code: 'tube',         name: 'Трубки',               klass: 'fas fa-candy-cane'},
{category_id: cat3.id, code: 'fins',         name: 'Ласты',                klass: ''},
{category_id: cat3.id, code: 'footpocket',   name: 'Калоши',               klass: ''},
{category_id: cat3.id, code: 'fin_blades',   name: 'Лопасти',              klass: ''},

{category_id: cat5.id, code: 'belts',        name: 'Ремни, разгрузки',     klass: ''},
{category_id: cat5.id, code: 'belt_weights', name: 'Свинец',               klass: ''},
{category_id: cat5.id, code: 'knives',       name: 'Ножи',                 klass: ''},
{category_id: cat5.id, code: 'hooks',        name: 'Куканы',               klass: ''},
{category_id: cat5.id, code: 'buoys',        name: 'Буи, плотики',         klass: ''},

{category_id: cat6.id, code: 'watch',        name: 'Часы',                 klass: ''},
{category_id: cat6.id, code: 'video',        name: 'Видеокамеры',          klass: ''},
{category_id: cat6.id, code: 'flashlights',  name: 'Фонари',               klass: ''},

{category_id: cat7.id, code: 'lines',        name: 'Линь',                 klass: ''},
{category_id: cat7.id, code: 'accessories',  name: 'Аксесуары',            klass: ''},
{category_id: cat7.id, code: 'parts',        name: 'Запчасти',             klass: ''},
{category_id: cat7.id, code: 'bags',         name: 'Сумки',                klass: ''},
].each { |hash| Subcategory.create(hash) }

[
{code: 'abysstar',     name: 'Abysstar',     country: '', www: '',     catalog: 'https://www.sportfishingparisi.com/catalogo-abysstar/', phone: '',    email: '',    address: ''},
{code: 'aeris',        name: 'Aeris',        country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'akvilon',      name: 'Akvilon',      country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'alpinasub',    name: 'РПП',          country: 'ru', www: 'alpinasub.ru',     catalog: '', phone: '+79870746665',    email: 'info@alpinasub.ru',    address: 'г.Пенза'},
{code: 'aqua_sphere',  name: 'Aqua Sphere',  country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'aquadiscovery',name: 'Aquadiscovery',country: 'ru', www: 'aquadiscoveryint.com',     catalog: '', phone: '+78632643232',    email: 'aquasub@aquasub.ru',    address: 'Ростов-на-Дону, ул.Красноармейская, 101'},
{code: 'aqualung',     name: 'Aqualung',     country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'bare',         name: 'Bare',         country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'beuchat',      name: 'Beuchat',      country: 'fr', www: '',     catalog: 'https://www.beuchat-diving.com/img/cms/Catalogues/2021_BEUCHAT_Spearfishing_Catalog_FR-EN.pdf', phone: '',    email: '',    address: ''},
{code: 'c4',           name: 'C4',           country: 'it', www: 'c4carbon.com',     catalog: 'https://drive.google.com/file/d/1GcewpqLiTOP9P0kYXJ0f9Ft2qjb8Q3RB/view', phone: '',    email: '',    address: ''},
{code: 'cressi',       name: 'Cressi',       country: 'it', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'ferei',        name: 'Ferei',        country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'garmin',       name: 'Garmin',       country: 'us', www: 'garmin.ru',     catalog: '', phone: '+74959613827',    email: '',    address: 'Москва, 3-й Угрешский пр-д, д.8, стр. 3, 13'},
{code: 'gopro',        name: 'GoPro',        country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'hollis',       name: 'Hollis',       country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'imersion',     name: 'Imersion',     country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'kayuk',        name: 'Каюк',         country: 'by', www: 'kayuk.by',     catalog: '', phone: '+375296443303',    email: 'info@kayuk.by',    address: 'Минск, ул.Л.Беды, д. 31, кв. 119'},
{code: 'leaderfins',   name: 'Leaderfins',   country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'mares',        name: 'mares',        country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'marlin',       name: 'Marlin',       country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'molchanovs',   name: 'Molchanovs',   country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'mvd',          name: 'MVD',          country: 'gr', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'oceanic',      name: 'Oceanic',      country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'omer',         name: 'O.M.E.R.',     country: 'it', www: 'omersub.com',     catalog: 'http://www.omersub.com/wp-content/themes/trackstore-child/assets/pdf/cataloghi/OMER_2021.pdf', phone: '+39039207881',    email: 'OMR-info@aqualung.com',    address: '14ème Rue | 06513 Carros, France'},
{code: 'pelengas',     name: 'Pelengas',     country: 'ua', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'picasso',      name: 'Picasso',      country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'rob_allen',    name: 'Rob Allen',    country: 'za', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'salvimar',     name: 'Salvimar',     country: 'it', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'sargan',       name: 'Sargan',       country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'scorpena',     name: 'Scorpena',     country: 'ru', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'scubapro',     name: 'Scubapro',     country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'seac_sub',     name: 'Seac Sub',     country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'speardiver',   name: 'SpearDiver',   country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'spetton',      name: 'Spetton',      country: 'es', www: 'spetton.com',     catalog: 'https://spetton.com/wp-content/uploads/2021/01/spetton%202021%20OK%20FINAL%20V4%20baja.pdf', phone: '+34961595260',    email: 'spetton@spetton.com',    address: '46909, Torrente, Valencia'},
{code: 'sporasub',     name: 'Sporasub',     country: 'it', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'subgear',      name: 'Subgear',      country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'suunto',       name: 'Suunto',       country: 'fi', www: 'suunto.com',     catalog: '', phone: '+3589875870',    email: '',    address: 'Tammiston kauppatie 7A FI-01510 Vantaa'},
{code: 'taimen',       name: 'Таймень',      country: 'ru', www: 'taimen.pro',     catalog: '', phone: '+79322394990',    email: 'taimen@apox.ru',    address: 'Челябинск ул.Енисейска 17 (ГСК 321}'},
{code: 'technisub',    name: 'Technisub',    country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'tigullio',     name: 'Tigullio',     country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'triton',       name: 'Triton',       country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'tusa',         name: 'Tusa',         country: 'jp', www: '',     catalog: '', phone: '',    email: '',    address: ''},
{code: 'zelinka',      name: 'Zelinka',      country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
# {code: 'vector',       name: 'Vector',       country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
# {code: '',      name: '',    country: '', www: '',     catalog: '', phone: '',    email: '',    address: ''},
].each { |hash| Manufacturer.create(hash) }

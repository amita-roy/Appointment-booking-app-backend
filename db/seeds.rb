# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.create({ name: 'Organic Facial', price: 700, offer: '20', description: 'Tan removal facial', duration: '55',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447022/pngegg_6_tazwdp.png' })

Service.create({ name: 'Charcoal Facial', price: 750, offer: '10', description: 'Deep cleansing', duration: '55',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619446965/pngegg_4_tkt9ga.png' })

Service.create({ name: 'Body Massage', price: 850, offer: '10', description: 'Stone massage', duration: '60',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619449097/pngegg111_nch5l0.png' })

Service.create({ name: 'Couple Massage', price: 1800, offer: '12', description: 'Progressive muscle relaxation',
                 duration: '70',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447023/pngegg_11_d4a8as.png' })

Service.create({ name: 'Full Body Waxing', price: 1200, offer: '10', description: 'Extra care for pre and post waxing',
                 duration: '120',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447023/pngegg_7_skzsio.png' })

Service.create({ name: 'Legs Waxing', price: 400, offer: '0', description: 'Sugar wax', duration: '30',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/Waxing-technique-for-glowing-skin-740x560-removebg-preview_g3qmdp.png' })

Service.create({ name: 'Hair Spa', price: 600, offer: '20', description: 'For more nurishment and shinning',
                 duration: '60',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/head - wash - dermaessentia_large_mt6ouv.jpg' })

Service.create({ name: 'Highlights', price: 1500, offer: '25', description: 'Mid length', duration: '180',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/pngegg_16_jz8c3l.png' })

Service.create({ name: 'Nails Extension', price: 1000, offer: '20', description: 'With Manicure', duration: '90',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447023/pngegg_9_hazbfx.png' })

Service.create({ name: 'Hand & Foot Care', price: 900, offer: '15', description: 'Manicure & Pedicure', duration: '100',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/pngegg_8_qqke3k.png' })

Service.create({ name: 'Hairdressing & Makeup', price: 2000, offer: '20', description: 'Any Ocassion', duration: '120',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/pngegg_13_hplqcb.png' })

Service.create({ name: 'Threading', price: 500, offer: '10', description: 'Full face', duration: '45',
                 image: 'https://res.cloudinary.com/dalroqfi9/image/upload/v1619447024/Daco_4146176_c9uevj.png' })

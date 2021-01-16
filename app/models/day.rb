class Day < ActiveHash::Base
  self.data = [
    { id: 1, name: '日' },
    { id: 2, name: '１日' },
    { id: 3, name: '２日' },
    { id: 4, name: '３日' },
    { id: 5, name: '４日' },
    { id: 6, name: '５日' },
    { id: 7, name: '６日' },
    { id: 8, name: '７日' },
    { id: 9, name: '８日' },
    { id: 10, name: '９日' },
    { id: 11, name: '１０日' },
    { id: 12, name: '１１日' },
    { id: 13, name: '１２日' },
    { id: 14, name: '１３日' },
    { id: 15, name: '１４日' },
    { id: 16, name: '１５日' },
    { id: 17, name: '１６日' },
    { id: 18, name: '１７日' },
    { id: 19, name: '１８日' },
    { id: 20, name: '１９日' },
    { id: 21, name: '２０日' },
    { id: 22, name: '２１日' },
    { id: 23, name: '２２日' },
    { id: 24, name: '２３日' },
    { id: 25, name: '２４日' },
    { id: 26, name: '２５日' },
    { id: 27, name: '２６日' },
    { id: 28, name: '２７日' },
    { id: 29, name: '２８日' },
    { id: 30, name: '２９日' },
    { id: 31, name: '３０日' },
    { id: 32, name: '３１日' }
  ]

  include ActiveHash::Associations
  has_many :onepayments
end
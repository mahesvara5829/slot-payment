# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :onepayments
- has_many :comments
- has_many :twopayments
- has_many :threepayments
- has_many :fourpayments
- has_many :fivepayments



## onepayments テーブル

| Column                 | Type    | Options     |
| ---------------------- | ------- | ----------- |
| month_id               | integer | null: false |
| day_id                 | integer | null: false |
| store_id               | integer | null: false |
| kisyu_id               | integer | null: false |
| one_investment         | string  | null: false |
| one_recovery           | string  | null: false |
| one_balance_of_payment | string  | null: false |
| one_rationale          | text    | null: false |

### Association
- belongs_to :user
- has_many :comments


## comments テーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| user_id      | integer | null: false |
| onepayment_id| integer | null: false |
| text         | text    | null: false |

### Association
- belongs_to :user
- belongs_to :onepayment



## twopayments テーブル

 Column                  | Type    | Options     |
| ---------------------- | ------- | ----------- |
| store_id               | integer | null: false |
| kisyu_id               | integer | null: false |
| two_investment         | string  | null: false |
| two_recovery           | string  | null: false |
| two_balance_of_payment | string  | null: false |
| two_rationale          | text    | null: false |

### Association
- belongs_to :user



## threepayments テーブル

| Column                   | Type    | Options     |
| ----------------------- -| ------- | ----------- |
| store_id                 | integer | null: false |
| kisyu_id                 | integer | null: false |
| three_investment         | string  | null: false |
| three_recovery           | string  | null: false |
| three_balance_of_payment | string  | null: false |
| three_rationale          | text    | null: false |

### Association
- belongs_to :user


## fourpayments テーブル

| Column                  | Type    | Options     |
| ----------------------- | ------- | ----------- |
| store_id                | integer | null: false |
| kisyu_id                | integer | null: false |
| four_investment         | string  | null: false |
| four_recovery           | string  | null: false |
| four_balance_of_payment | string  | null: false |
| four_rationale          | text    | null: false |

### Association
- belongs_to :user


## fivepayments テーブル

| Column                  | Type    | Options     |
| ----------------------- | ------- | ----------- |
| store_id                | integer | null: false |
| kisyu_id                | integer | null: false |
| five_investment         | string  | null: false |
| five_recovery           | string  | null: false |
| five_balance_of_payment | string  | null: false |
| five_rationale          | text    | null: false |

### Association
- belongs_to :user

Bot
---

File: `lib/vkteamsbot/bot.rb`

---

## Конструктор 
```ruby
def initialize token, pool_time=30
```

## Event loop
```ruby
def listen
```
Принимает блок, которому передаётся экземпляр класса [Event](./event.md)(последние событие)

## Закрыть Event loop
Чтобы закрыть цикл нужно аттрибуту объекта Bot `loop` установить `false`.
```ruby
bot.loop = false
```

## Добавить handler(обработчик событий)
```ruby
def add_handler text, handler
```
1. `text` - текст события.
2. `handler` - анонимная функция(принимает объект типа [Event](./event.md)), которая сработает при получение события с текстом идентичном `text`.

## Добавить callback handler
```ruby
def add_callback_handler data, handler
```
1. `data` - текст события..
2. `handler` - анонимная функция(принимает объект типа [Event](./event.md)), которая сработает при получение callback события с идентификатор идентичным `data`.

## Отправить сообщение
```ruby
def send_msg msg, chat_id # -> Hash
```
1. `msg` - это объект типа [Message](./message.md), либо обычный String.
2. `chat_id` - ID чата, куда надо отправить сообщение.

## Удалить сообщение
```ruby
def delete_msg msg_id, chat_id # -> Hash
```
1. `msg_id` - ID сообщения, которое надо удалить. 
2. `chat_id` - ID чата, откуда надо удалить сообщение.

## Изменить сообщение
```ruby
def edit_msg msg, msg_id, chat_id # -> Hash
```
1. `msg` - это объект типа [Message](./message.md), либо обычный String.
2. `msg_id` - ID сообщения, которое надо изменить. 
3. `chat_id` - ID чата, где надо изменить сообщение.

# Chats

## Получить информацию о чате
```ruby
def get_info chat_id # -> Hash | User
```
1. `chat_id` - ID чата, информацию о котором надо получить.

## Получить список участников
```ruby
def get_members chat_id, cursor=nil # -> [Hash]
```
1. `chat_id` - ID чата, откуда надо получить список участников.

## Получить список заблокированных пользователей
```ruby
def get_blocked_users chat_id # -> [Hash]
```
1. `chat_id` - ID чата, откуда надо получить список заблокированных пользователей.

## Получить список aдминов
```ruby
def get_admins chat_id # -> [Hash]
```
1. `chat_id` - ID чата, откуда надо получить список aдминов.

# Chat administration
Для работы этих методов бот должен иметь права администрации. 

## Установка названия чата
```ruby
def set_title chat_id, title # -> Hash
```
1. `chat_id` - ID чата.
2. `title` - новое название чата.

## Установка описания чата
```ruby
def set_about chat_id, about # -> Hash
```
1. `chat_id` - ID чата.
2. `about` - новое описание чата. 

## Установка правил чата
```ruby
def set_rules chat_id, rules # -> Hash
```
1. `chat_id` - ID чата.
2. `rules` - правила чата.

## Закрепить сообщение
```ruby
def pin_msg msg_id, chat_id # -> Hash
```
1. `msg_id` - ID сообщения, что нужно закрепить.
2. `chat_id` - ID чата.

## Открепить сообщение
```ruby
def unpin_msg msg_id, chat_id # -> Hash
```
1. `msg_id` - ID сообщения, что нужно открепить.
2. `chat_id` - ID чата.

## Забанить участника
```ruby
def block_user user_id, chat_id, del_last_msg=false # -> Hash
```
1. `user_id` - ID пользователя, который должен отлететь в бан.
2. `chat_id` - ID чата, где забанят.
3. `del_last_msg` - удалить или нет последние сообщение пользователя. 

## Разбанить участника
```ruby
def unblock_user user_id, chat_id # -> Hash
```
1. `user_id` - ID пользователя, который должен вернуться из бана.
2. `chat_id` - ID чата, где разабанят.